class NotesController < ApplicationController
	# before_action :correct_user, only: [:edit, :update]
	def index
	end

	def show
		@note = Note.find(params[:id])
		@exercises = Exercise.where(note_id: @note.id)
	end

	def new
	end

	def create
		current_user.notes.create(note_params)
		redirect_to my_notes_path(current_user)
	end

	def edit
		@note = Note.find(params[:id])
		@exercise = Exercise.new
		@exercises = Exercise.where(note_id: @note.id)
	end

	def update
	end

	def destroy
	end

	private
	def note_params
		params.require(:note).permit(:name)
	end

	# def correct_user
	# 	note = Note.find(params[:id])
	# 	if note.user != correct_user
	# 		redirect_to root_path
	# 	end
	# end
end
