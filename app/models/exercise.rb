class Exercise < ApplicationRecord
	belongs_to :user
	belongs_to :note
	validates :exercise_name, presence: true, length: {minimum: 2, maximum: 20}
end
