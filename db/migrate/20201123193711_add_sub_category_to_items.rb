class AddSubCategoryToItems < ActiveRecord::Migration[6.0]
  def change
    add_reference :items, :sub_category, foreign_key: true
  end
end
