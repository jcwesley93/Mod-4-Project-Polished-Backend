class AddImgToPolishes < ActiveRecord::Migration[5.2]
  def change
    add_column :polishes, :img, :string
  end
end
