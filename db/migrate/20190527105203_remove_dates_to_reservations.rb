class RemoveDatesToReservations < ActiveRecord::Migration[5.2]
  def change
    remove_column :reservations, :start_day, :date
    remove_column :reservations, :end_day, :date
  end
end
