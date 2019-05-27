class AddReserationRangesToReservations < ActiveRecord::Migration[5.2]
  def change
    add_column :reservations, :reservation_range, :string
  end
end
