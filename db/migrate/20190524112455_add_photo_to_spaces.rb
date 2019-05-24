class AddPhotoToSpaces < ActiveRecord::Migration[5.2]
  def change
    add_column :spaces, :photo, :string
    remove_column :spaces, :image
  end
end
