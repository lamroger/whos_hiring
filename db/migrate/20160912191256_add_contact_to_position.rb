class AddContactToPosition < ActiveRecord::Migration[5.0]
  def change
    add_column :positions, :contact, :string
  end
end
