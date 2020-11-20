class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :mentor, dependent: :destroy
  has_many :consultations, dependent: :destroy
  has_one_attached :photo
  validates :email, :password, presence: true
  has_many :consultations_as_mentor, through: :mentor, source: :consultations
end
