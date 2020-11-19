class Tag < ApplicationRecord
  has_many :mentor_tags, dependent: :destroy
  has_many :consultation_tags
end
