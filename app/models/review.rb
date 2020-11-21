class Review < ApplicationRecord
  belongs_to :mentor
  validates :content, length: { minimum: 20 }
end
