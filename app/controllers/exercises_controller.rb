class ExercisesController < ApplicationController
	before_action :correct_user, only: []
	def create
	end

	def edit
	end

	def update
	end

	def destroy
	end

	private
	def excercise_params
		params.require(:exercise).permit(:exercise_name, :weight, :weight_two, :weight_three, :weight_four, :weight_five, :weight_six,
			:weight_seven, :weight_eight, :weight_nine, :weight_ten, :set, :set_two, :set_three, :set_four, :set_five, :set_six,
			:set_seven, :set_eight, :set_nine, :set_ten, :rep, :rep_two, :rep_three, :rep_four, :rep_five, :rep_six, :rep_seven, :rep_eight,
			:rep_nine, :rep_ten, :exercise_note)
	end

	def correct_user
		exercise = Exercise.find(params[:id])
		if exercise.user != correct_user
			redirect_to root_path
		end
	end
end
