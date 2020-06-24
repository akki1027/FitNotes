class NotesController < ApplicationController
	before_action :correct_user, :only [:edit, :update]
	def index
	end

	def show
	end

	def new
	end

	def create
	end

	def edit
	end

	def update
	end

	def destroy
	end

	private
	def note_params
		params.require(:note).permit(:name)
	end

	def correct_user
		note = Note.find(params[:id])
		if note.user != correct_user
			redirect_to root_path
		end
	end
end
