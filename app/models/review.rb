class Review < ApplicationRecord
  validates :content, presence: true, length: { minimum: 4 }
  validates :rating, presence: true
  # Must be 1-5
  validates :rating, inclusion: { in: 0..5 }
  # If its and integer
  validates :rating, numericality: { only_integer: true }
  # If its associated with other
  belongs_to :restaurant
end
