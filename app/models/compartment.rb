class Compartment < ActiveRecord::Base
    has_many :train_compartments
    has_many :compartments,through: :train_compartments
end
