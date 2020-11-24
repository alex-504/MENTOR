class Certification < ApplicationRecord
  belongs_to :user
  belongs_to :tag
  belongs_to :mentor
end
