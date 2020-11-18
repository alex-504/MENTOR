class MentorTag < ApplicationRecord
  belongs_to :tag
  belongs_to :mentor
  # validates_uniqueness_of :mentor, scope: :tag
end
