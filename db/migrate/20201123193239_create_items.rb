class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :title
      t.text :description
      t.string :brand
      t.integer :year
      t.integer :price
      t.boolean :featured

      t.timestamps
    end
  end
end
