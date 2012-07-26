class SessionsController < ApplicationController
  def new
  end

   def create
      user = User.find_by_email(params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      redirect_to dashboard_url, flash: {success: "You are now signed in!"}
    else
      flash.now[:error] = "Invalid email or password"
      render "new"
    end
  end
end
