# frozen_string_literal: true

class Category < ApplicationRecord
  has_many_attached :picture
  has_many :products, dependent: :destroy
  belongs_to :parent, class_name: "Category", optional: true
  has_many :sub_categories, class_name: "Category", foreign_key: :parent_id, dependent: :destroy
  validates :category_name, presence: true, uniqueness: { case_sensitive: false }
  after_create { generate_url_key(category_name) }
  after_commit { RedisService.delete('categories_cache') }

  scope :top_level, proc { where(parent_id: nil) }

  def descendants
    self.class.where("id IN (#{self.class.sql_for_tree(self)})")
  end

  def ancestors
    return [] unless parent_id
    self.class.where("id IN (#{self.class.ancestors_tree(self)})")
  end

  def self.ancestors_tree(instance)
    <<-SQL
      WITH RECURSIVE ancestors AS(
        SELECT * FROM categories WHERE id = #{instance.parent_id}
        UNION
        SELECT categories.* FROM categories INNER JOIN ancestors ON categories.id = ancestors.parent_id
      )
      SELECT id FROM ancestors
    SQL
  end

  def all_products(limit=20, offset=0)
    Product.where("products.category_id IN (#{self.class.sql_for_family(self)})").limit(limit).offset(offset)
  end

  class << self
    def sql_for_tree(instance, limit=10)
      <<-SQL
        WITH RECURSIVE descendants AS (
          SELECT id FROM categories WHERE parent_id = #{instance.id} #{yield if block_given?}
          UNION
          SELECT c.id FROM descendants d INNER JOIN categories c ON c.parent_id = d.id
        ) SELECT id FROM descendants LIMIT #{limit}
      SQL
    end

    def sql_for_family(instance)
      sql_for_tree(instance) do
        "OR id = #{instance.id}"
      end
    end
  end
end
