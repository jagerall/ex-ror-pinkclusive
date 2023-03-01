class Practitioner < ApplicationRecord
    validates_presence_of :name, :surname, :address
end
