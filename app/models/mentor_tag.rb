class MentorTag < ApplicationRecord
  belongs_to :tag
  belongs_to :mentor
end
