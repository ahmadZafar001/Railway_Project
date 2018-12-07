class CreateStaffContacts < ActiveRecord::Migration
  def change
    create_table :staff_contacts do |t|
      t.string :phone_number
      t.text :address
      t.belongs_to :staff, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
