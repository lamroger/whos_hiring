class CreatePositionsAndTechnologies < ActiveRecord::Migration[5.0]
  def change
    create_join_table :positions, :technologies do |t|
      t.index :position_id
      t.index :technology_id
    end
  end
end
