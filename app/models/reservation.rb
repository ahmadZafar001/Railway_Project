class Reservation < ActiveRecord::Base
  belongs_to :passenger
  belongs_to :train_compartment
end
