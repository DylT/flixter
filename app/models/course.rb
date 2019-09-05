class Course < ApplicationRecord
  belongs_to :user
  has_many :sections
  has_many :enrollments

  mount_uploader :image, ImageUploader

  validates :title, :description, :cost, presence: true
  validates :cost, numericality: {greater_than_or_equal_to: 0}

  def free?
    cost.zero?
  end

  def premium?
    ! free?
  end
end
