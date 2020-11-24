class Review < ApplicationRecord
  belongs_to :mentor
  belongs_to :user
  validates :content, length: { minimum: 5 }
  validates :rating, :inclusion => { :in => 0..5 }
end
