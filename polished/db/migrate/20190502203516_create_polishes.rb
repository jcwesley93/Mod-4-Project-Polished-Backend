class CreatePolishes < ActiveRecord::Migration[5.2]
  def change
    create_table :polishes do |t|
      t.string :name
      t.string :brand
      t.string :color_category
      t.string :season
      t.string :description 
      t.float :price
      t.string :link
      t.timestamps
    end
  end
end
