class AddOnlineToSpaces < ActiveRecord::Migration[5.2]
  def change
    add_column :spaces, :online, :boolean
  end
end
