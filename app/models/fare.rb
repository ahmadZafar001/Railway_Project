class Fare < ActiveRecord::Base
  validates :route, uniqueness: { scope: :train_compartment }
  belongs_to :train_compartment
  belongs_to :route
end
