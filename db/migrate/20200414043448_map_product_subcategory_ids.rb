class MapProductSubcategoryIds < ActiveRecord::Migration[5.2]
  def change
    move_sub_categories
    update_product_category
  end

  def move_sub_categories
    categories = SubCategory
    .select(:category_name, :category_description, :category_id)
    .map do |cat|
      cat = cat.attributes
      cat["parent_id"] = cat["category_id"]
      cat.except("category_id")
    end
    Category.create categories
  end

  def update_product_category
    products = Product.joins(:sub_category).select('sub_categories.category_name AS sub_cat_name', :id)
    products.each do |p|
      cat = Category.find_by_category_name(p.sub_cat_name)
      p.reload.update!(category_id: cat.id)
    end
  end
end
