class CreatePositions < ActiveRecord::Migration[5.0]
  def change
    create_table :positions do |t|
      t.string :title
      t.string :location
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
