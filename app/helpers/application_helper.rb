module ApplicationHelper
	def full_title
		base_title = "Assign It App"
		if page_title.empty?
			base_title
		else
			"#{base_title} - #{page_title}"
		end
	end
end
