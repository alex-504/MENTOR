class Message < ApplicationRecord
  belongs_to :consultation
  belongs_to :user
  # TODO(SHO FIX THIS)
  # validates :content, presence: true
end
