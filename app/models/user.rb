class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
	devise :database_authenticatable, :registerable,
	     :recoverable, :rememberable, :validatable
	validates :name, presence: :true, length: {minimum: 2, maximum:20}
	validates :introduction, length: {maximum: 150}
	attachment :profile_photo
	has_many :notes, dependent: :destroy
	has_many :exercises, dependent: :destroy
end
