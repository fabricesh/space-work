class CreateSpaces < ActiveRecord::Migration[5.2]
  def change
    create_table :spaces do |t|
      t.string :title
      t.string :localisation
      t.string :availabilities
      t.float :price
      t.string :space_type
      t.integer :capacity
      t.string :image
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
