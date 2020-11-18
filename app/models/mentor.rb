class Mentor < ApplicationRecord
  belongs_to :user
  has_many :consultations, dependent: :destroy
  has_many :mentor_tags, dependent: :destroy
  has_many :tags, through: :mentor_tags
  # has_one_attached :photo
  validates :title, :availability, :price, :description, presence: true
    
    include PgSearch::Model
    pg_search_scope :mentor_and_tag_search,
    against: [ :description, :title ],
    associated_against: {
      tags: [ :name ]
    },
    using: {
      tsearch: { prefix: true }
    }
end
