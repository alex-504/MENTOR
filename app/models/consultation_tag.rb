class ConsultationTag < ApplicationRecord
  belongs_to :tag
  belongs_to :consultation
end
