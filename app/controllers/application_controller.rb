class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper
  def admin_only
  	if @currnet_user.nil?
  		redirect_to root_url
  	end
  end


# Config
$cdc_name = "Sample CDC"
# This MUST be in the time zone that Rails is set in
# this can be chanaged in the <tt>config/application.rb</tt>
# A List of time zones can be found by runiing
# <tt>rake -D time</td>
$cdc_start_date_time_server_time 
end
