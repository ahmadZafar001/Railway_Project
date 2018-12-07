class CreatePassengers < ActiveRecord::Migration
  def change
    create_table :passengers do |t|
      t.string :fname
      t.string :lname
      t.integer :age
      t.string :gender
      t.string :cnic

      t.timestamps null: false
    end
  end
end
