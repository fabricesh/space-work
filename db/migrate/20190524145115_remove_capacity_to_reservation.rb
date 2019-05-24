class RemoveCapacityToReservation < ActiveRecord::Migration[5.2]
  def change
    remove_column :reservations, :capacity, :integer
  end
end
