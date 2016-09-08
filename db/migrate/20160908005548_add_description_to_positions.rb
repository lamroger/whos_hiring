class AddDescriptionToPositions < ActiveRecord::Migration[5.0]
  def change
    add_column :positions, :description, :string
  end
end
