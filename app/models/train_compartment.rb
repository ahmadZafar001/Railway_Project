class TrainCompartment < ActiveRecord::Base
  belongs_to :train
  belongs_to :compartment
  
  def name
    return self.train.name + " : " + self.compartment.name
  end
end
