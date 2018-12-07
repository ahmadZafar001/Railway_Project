class CreateJourneys < ActiveRecord::Migration
  def change
    create_table :journeys do |t|
      t.belongs_to :train, index: true, foreign_key: true
      t.belongs_to :route, index: true, foreign_key: true
      t.belongs_to :staff, index: true, foreign_key: true
      t.integer :pass_count
      t.datetime :dep_time
      t.datetime :arr_time

      t.timestamps null: false
    end
  end
end
