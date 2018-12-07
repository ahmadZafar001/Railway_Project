class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.belongs_to :passenger, index: true, foreign_key: true
      t.belongs_to :train_compartment, index: true, foreign_key: true
      t.integer :seat_number
      t.datetime :reservation_date

      t.timestamps null: false
    end
  end
end
