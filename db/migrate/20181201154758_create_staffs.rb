class CreateStaffs < ActiveRecord::Migration
  def change
    create_table :staffs do |t|
      t.string :cnic
      t.string :fname
      t.string :lname
      t.string :gender
      t.integer :age
      t.string :role

      t.timestamps null: false
    end
  end
end
