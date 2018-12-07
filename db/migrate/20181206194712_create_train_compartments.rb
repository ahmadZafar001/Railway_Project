class CreateTrainCompartments < ActiveRecord::Migration
  def change
    create_table :train_compartments do |t|
      t.belongs_to :train, index: true, foreign_key: true
      t.belongs_to :compartment, index: true, foreign_key: true
      t.integer :available_seats

      t.timestamps null: false
    end
  end
end
