class Passenger < ActiveRecord::Base
    has_many :passenger_contacts
    accepts_nested_attributes_for :passenger_contacts, reject_if: :all_blank, allow_destroy: true
    def name
        return self.fname + " " + self.lname
    end
end
