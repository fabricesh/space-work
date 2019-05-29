class CreateCapacityPerDays < ActiveRecord::Migration[5.2]
  def change
    create_table :capacity_per_days do |t|
      t.string :date
      t.integer :seats_available
      t.references :space, foreign_key: true

      t.timestamps
    end
  end
end
