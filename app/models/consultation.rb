class Consultation < ApplicationRecord
  belongs_to :user
  belongs_to :mentor
  has_many :consultation_tags, dependent: :destroy
  has_many :tags, through: :consultation_tags

  validates :details, :start_time, :duration, presence: true
  DURATION = [30, 60, 90, 120]
end
