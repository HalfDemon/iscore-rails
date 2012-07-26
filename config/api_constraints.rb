class ApiConstraints
	def initalize(options)
		@version = options[:version]
		@default = options[:default]
	end

	def matches?(req)
		@default || req.headers['Accept'].include?("appliction/vnd.cdcscore.v#{@version}")
	end
end