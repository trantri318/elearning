# frozen_string_literal: true

# This shiny device polishes bared foos
class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new user_params

    if @user.save
      flash[:success] = 'Register success'
      redirect_to users_path
    else
      flash[:danger] = 'Register failed'
      render :new
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit :name, :email, :password, :password_confirmation, :avatar
  end
end
