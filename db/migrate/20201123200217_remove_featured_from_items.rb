class RemoveFeaturedFromItems < ActiveRecord::Migration[6.0]
  def change
    remove_column :items, :featured, :boolean
  end
end
