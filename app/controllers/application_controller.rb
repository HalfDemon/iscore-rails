class ApplicationController < ActionController::Base
  protect_from_forgery

  def admin_only
  	if @currnet_user.nil?
  		redirect_to root_url
  	end
  end
  
  
  def create_flag_content(site, service)
    flag_content = "#{Time.now.utc}#{site.id}#{site.number}#{service.id}#{service.port}#{site.id}#{Time.now.utc}#{site.created_at}#{service.created_at}#{Time.now.utc + 6.hours + 45.seconds}#{rand(-9999999..9999999)*432}"
    Password.create(flag_content)
  end

# Config
#
# CDC Name
#
# This is name of the cdc
# this will used through
# the app. 
$cdc_name = "Sample CDC"
#
# CDC Start Time
#
# Start Time of CDC
# This when the cdc starts
# this will unlock all
# parts of the app
# You will want to hard
# code these since using the
# sample code will result 
# in a endless CDC
$cdc_start_name = Chronic.parse("8 hours ago")
# 
# CDC End Time
#
# This is when the compition closes
# You will want to hard
# code these since using the
# sample code will result 
# in a endless CDC
$cdc_end_name = Chronic.parse("2 hours from now")
end
