class CreateTrains < ActiveRecord::Migration
  def change
    create_table :trains do |t|
      t.belongs_to :staff, index: true, foreign_key: true
      t.string :name
      t.integer :train_type
      t.boolean :availibility,default: true

      t.timestamps null: false
    end
  end
end
