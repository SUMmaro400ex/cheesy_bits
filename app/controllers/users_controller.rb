class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      @current_user = @user
      session[:user_id] = @current_user.id
      redirect_to @user
    else
      render :new
    end

  end

  def show

  end

  private
  def user_params
    params.require(:user).permit(:password, :user_name)
  end

end
