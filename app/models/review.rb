class Review < ApplicationRecord
  belongs_to :mentor
  validates :content, length: { minimum: 5 }
end
