class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.belongs_to :passenger, index: true, foreign_key: true
      t.belongs_to :train_compartment, index: true, foreign_key: true
      t.belongs_to :route, index: true, foreign_key: true
      t.integer :fare
      t.integer :seat_number

      t.timestamps null: false
    end
  end
end
