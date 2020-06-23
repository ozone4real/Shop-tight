class UpdateActiveStorageAttachments < ActiveRecord::Migration[5.2]
  def change
    ActiveStorage::Attachment.where(record_type: "SubCategory").each do |att|
      next unless att.record
      category = Category.find_by_category_name att.record.category_name
      att.update! record_type: "Category", record_id: category.id
    end
  end
end
