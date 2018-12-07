class CreateRoutes < ActiveRecord::Migration
  def change
    create_table :routes do |t|
      t.integer :source_id
      t.integer :destination_id

      t.timestamps null: false
    end
  end
end
