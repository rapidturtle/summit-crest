class AddPositionToManufacturers < ActiveRecord::Migration
  def change
    add_column :manufacturers, :position, :integer
  end
end
