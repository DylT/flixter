class Course < ApplicationRecord
  belongs_to :user
  has_many :sections

  validates :title, :description, :cost, presence: true
  validates :cost, numericality: {greater_than_or_equal_to: 0}
end
