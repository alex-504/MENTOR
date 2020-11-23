class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :mentor, dependent: :destroy
  has_many :consultations, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :certifications, dependent: :destroy
  has_many :tags, through: :certifications
  has_one_attached :photo

  has_many :consultations_as_mentor, through: :mentor, source: :consultations
end
