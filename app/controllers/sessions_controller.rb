# frozen_string_literal: true

# This shiny device polishes bared foos
class SessionsController < ApplicationController
  def new
  
  end

  def create
    user = User.find_by email: params[:session][:email]
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      flash[:success] = 'You are logged in successfully'
      redirect_to root_path
    else
      flash[:danger] = "Invalid email/password combination"
      render :new
    end
  end
end
