class ApiConstraints
	def initalize(version, default=nil)
		@version = version
		@default = default
	end

	def matches?(req)
		@default || req.headers['Accept'].include?("appliction/vnd.cdcscore.v#{@version}")
	end
end