class UsersController < ApplicationController
	before_action :correct_user, only: [:edit, :update]
  def index
  end

  def show
  end

  def edit
  end

  def update
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
