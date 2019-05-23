class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.string :period
      t.float :total_price
      t.references :user, foreign_key: true
      t.references :space, foreign_key: true

      t.timestamps
    end
  end
end
