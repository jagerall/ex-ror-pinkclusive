class Plant < ApplicationRecord
    validates_presence_of :name, :description, :capacity, :pv, :atk, :def, :image
end
