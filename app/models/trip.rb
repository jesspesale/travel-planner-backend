class Trip < ApplicationRecord
    has_many :packing_items
    has_many :itinerary_items

    validates :destination, presence: true
end
