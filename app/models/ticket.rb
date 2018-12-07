class Ticket < ActiveRecord::Base
  belongs_to :passenger
  belongs_to :train_compartment
  belongs_to :route
  belongs_to :discount
end
