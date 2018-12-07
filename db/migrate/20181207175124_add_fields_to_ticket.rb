class AddFieldsToTicket < ActiveRecord::Migration
  def change
    add_reference :tickets, :discount, index: true, foreign_key: true
    add_column :tickets, :final_fare, :float
  end
end
