class AddColumnToUser < ActiveRecord::Migration[5.2]
  def change
   add_column :users, :name, :string
   add_column :users, :surname, :string
   add_column :users, :company_name, :string
   add_column :users, :user_description, :text
   add_column :users, :space_owner, :boolean, default: false
  end
end
