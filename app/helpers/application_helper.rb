module ApplicationHelper
	def title
		base_title = $cdc_name
		if page_title.empty?
			base_title
		else
			"#{base_title} - #{page_title}"
		end
	end
end
