class Flat < ApplicationRecord
  validates :name, :address, presence: true
  validates :price_per_night, :number_of_guests, numericality: { only_integer: true }
  validates :price_per_night, :number_of_guests, numericality: { greater_than_or_equal_to: 0 }
end
