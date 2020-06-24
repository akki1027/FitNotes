class Note < ApplicationRecord
	belongs_to :user
	has_many :exercises, dependent: :destroy
	validates :name, presence: true, length: {minimum: 2, maximum: 20}
end
