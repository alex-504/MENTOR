class Mentor < ApplicationRecord
  belongs_to :user
  has_many :mentor_tags, dependent: :destroy
  validates :title, :availability, :price, :description, prsence: true
end
