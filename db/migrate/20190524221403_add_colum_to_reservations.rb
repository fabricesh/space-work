class AddColumToReservations < ActiveRecord::Migration[5.2]
  def change
    add_column :reservations, :start_day, :date
    add_column :reservations, :end_day, :date
  end
end
