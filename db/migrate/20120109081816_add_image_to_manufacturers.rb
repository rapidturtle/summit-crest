class AddImageToManufacturers < ActiveRecord::Migration
  def change
    add_column :manufacturers, :image, :string
  end
end
