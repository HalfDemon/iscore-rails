class SessionsController < ApplicationController
  def new
  end

  def create
  	user = User.find_by_email(params[:session][:email])
  	if user && user.authenticate(params[:session][:password])
  		flash[:success] = "You are now signed in."
  	else
  		flash[:error] = "Invaild Username and/ or password combination"
  	end
  end
end
