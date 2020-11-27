class Review < ApplicationRecord
  validates :content, presence: true
  validates :rating, presence: true, inclusion: { in: (0..5) }, numericality: true

  belongs_to :restaurant
end
