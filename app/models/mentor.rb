class Mentor < ApplicationRecord
  belongs_to :user
  has_many :consultations, dependent: :destroy
  has_many :mentor_tags, dependent: :destroy
  has_many :tags, through: :mentor_tags
  validates :title, :availability, :price, :description, presence: true
end
