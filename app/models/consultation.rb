class Consultation < ApplicationRecord
  belongs_to :user
  belongs_to :mentor
  validates :details, :start_time, :duration, presence: true
  # DURATION= [30,60,90]
end
