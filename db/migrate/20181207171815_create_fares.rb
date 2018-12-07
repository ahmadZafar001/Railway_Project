class CreateFares < ActiveRecord::Migration
  def change
    create_table :fares do |t|
      t.belongs_to :train_compartment, index: true, foreign_key: true
      t.belongs_to :route, index: true, foreign_key: true
      t.integer :amount

      t.timestamps null: false
    end
  end
end
