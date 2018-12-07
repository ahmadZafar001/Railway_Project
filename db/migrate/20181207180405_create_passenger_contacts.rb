class CreatePassengerContacts < ActiveRecord::Migration
  def change
    create_table :passenger_contacts do |t|
      t.string :phone_number
      t.belongs_to :passenger, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
