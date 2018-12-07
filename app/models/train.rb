class Train < ActiveRecord::Base
    has_many :train_compartments
    has_many :compartments,through: :train_compartments
    
    accepts_nested_attributes_for :train_compartments, reject_if: :all_blank, allow_destroy: true
    belongs_to :staff
    enum train_type: ['Type A','Type B',"Type C"]
    
    def total_seats
        return self.train_compartments.pluck(:available_seats).compact.inject(:+)
    end
end
