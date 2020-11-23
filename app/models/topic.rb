class Topic < ApplicationRecord
  belongs_to :consultation
  validates :title, presence: true
end
