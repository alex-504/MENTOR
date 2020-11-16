class Tag < ApplicationRecord
  has_many :mentor_tags, dependent: :destroy

end
