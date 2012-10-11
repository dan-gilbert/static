module NotificationHelper
  include ActionView::Helpers::TagHelper

	def banner_notification
		banner_content = NotificationFileLookup.banner_content
    banner_category = NotificationFileLookup.banner_category.to_s.gsub("_", "-")
		if banner_content
			content_tag(:section, banner_content, {:id => "banner-notification", :class => banner_category}, false)
		else
			''
		end
	end
end
