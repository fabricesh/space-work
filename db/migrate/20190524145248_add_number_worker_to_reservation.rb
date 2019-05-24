class AddNumberWorkerToReservation < ActiveRecord::Migration[5.2]
  def change
    add_column :reservations, :number_worker, :integer
  end
end
