class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :mentors, dependent: :destroy
  has_many :consultations, dependent: :destroy
  validates :name, :email, :password, :role, :linkedin_url, presence: true

end
