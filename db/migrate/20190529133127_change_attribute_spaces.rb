class ChangeAttributeSpaces < ActiveRecord::Migration[5.2]
  def change
    remove_column :spaces, :capacity, :string
    add_column :spaces, :capacity, :integer
  end
end
