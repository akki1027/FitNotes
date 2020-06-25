class ExercisesController < ApplicationController
	# before_action :correct_user, only: []
	def new
	end

	def create
		note = Note.find(params[:note_id])
		exercise = current_user.exercises.new(excercise_params)
		exercise.note_id = note.id
		if exercise.save
			redirect_to my_notes_path(current_user)
		else
			render 'notes/edit'
		end
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
