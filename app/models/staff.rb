class Staff < ActiveRecord::Base
    has_many :staff_contacts
    accepts_nested_attributes_for :staff_contacts, reject_if: :all_blank, allow_destroy: true
    def name
        return self.fname + " " + self.lname
    end
end
