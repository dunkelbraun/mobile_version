module MobileVersion
  
  module Filters
    
    private

    def set_mobile_html_version
      browser.mobile? && set_request_format_to_mobilehtml
    end
    
  end
  
end