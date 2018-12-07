class CreateCompartments < ActiveRecord::Migration
  def change
    create_table :compartments do |t|
      t.string :name
      t.integer :capacity

      t.timestamps null: false
    end
  end
end
