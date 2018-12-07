class Route < ActiveRecord::Base
    belongs_to :source,class_name: "Station"
    belongs_to :destination,class_name: "Station"
    
    def name
        return self.source.name + " to " + self.destination.name
    end
end
