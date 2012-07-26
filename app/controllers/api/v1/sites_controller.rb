##
#== API
# This API is JSON API
# This API is versioned by an header
# The header must be sent like so if you want
# a differnt :
# <tt>Accept: application/vnd.cdcscore.v1</tt>
# The Current Version: 1
# Supported Versions: 1
# Unsupported Versions: None at this time

module Api
	module V1
		class SitesController < ApplicationController
			respond_to :json

			def index
				respond_with Site.all
			end

			def show
				respond_with Site.find(params[:id])
			end

			def create
				respond_with Site.create(params[:product])
			end

			def update
				respond_with Site.update(params[:id], params[:site])
			end

			def destroy
				respond_with Site.destroy(params[:id])
			end
		end
	end
end