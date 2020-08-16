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
    if user.update(user_params)
      flash[:notice] = '会員情報を変更しました。'
      redirect_to user_path(user)
    else
      @user = current_user
      render :edit
    end
  end

  def my_notes
    @notes = Note.where(user_id: current_user.id)
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
