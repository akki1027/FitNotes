class NotesController < ApplicationController
	before_action :correct_user, only: [:edit, :update]
	def index
	end

	def show
		@note = Note.find(params[:id])
		@exercises = Exercise.where(note_id: @note.id)
	end

	def new
		@note = Note.new
	end

	def create
		note = Note.new(note_params)
		note.user_id = current_user.id
		if note.save
			flash[:notice] = "ノートを作成しました。"
			redirect_to edit_note_path(current_user.notes.last.id)
		else
			@note = Note.new
			render :new
		end
	end

	def edit
		@note = Note.find(params[:id])
		@exercise = Exercise.new
		@exercises = Exercise.where(note_id: @note.id)
	end

	def update
		note = Note.find(params[:id])
		note.update(note_params)
		redirect_to request.referrer || root_url
	end

	def destroy
		note = Note.find(params[:id])
		if note.destroy
			flash[:notice] = 'ノートを削除しました。'
			redirect_to my_notes_path
		else
			@notes = Note.where(user_id: current_user.id)
			render 'users/my_notes'
		end
	end

	private
	def note_params
		params.require(:note).permit(:name)
	end

	def correct_user
		note = Note.find(params[:id])
		if note.user != current_user
			redirect_to root_path
		end
	end
end
