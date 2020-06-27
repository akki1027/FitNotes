class UsersController < ApplicationController
	before_action :correct_user, only: [:edit, :update]
  def index
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    user.update(user_params)
    redirect_to user_path(user)
  end

  def my_notes
    @notes = Note.all
  end

  private
  def user_params
  	params.require(:user).permit(:name, :introduction, :profile_photo, :emai, :password)
  end

  def correct_user
	user = User.find(params[:id])
  	if user != current_user
  		redirect_to root_path
  	end
  end
end
