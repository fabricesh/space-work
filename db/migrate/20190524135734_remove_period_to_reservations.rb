class RemovePeriodToReservations < ActiveRecord::Migration[5.2]
  def change
    remove_column :reservations, :period, :string
  end
end
