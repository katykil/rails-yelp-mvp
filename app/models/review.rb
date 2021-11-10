class Review < ApplicationRecord
  belongs_to :restaurant # the review must have a parent restaurant

  validates :content, :rating, presence: true
  validates :rating, inclusion: { in: (0..5) }, numericality: { only_integer: true }
end
