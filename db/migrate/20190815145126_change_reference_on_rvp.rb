class ChangeReferenceOnRvp < ActiveRecord::Migration[5.2]
  def change
    remove_reference :recently_viewed_products, :product_detail
    add_reference :recently_viewed_products, :product
  end
end
