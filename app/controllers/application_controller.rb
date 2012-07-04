class ApplicationController < ActionController::Base
  protect_from_forgery

  def admin_only
  	if @currnet_user.nil?
  		redirect_to root_url
  	end
  end
end
