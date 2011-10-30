require 'browser'

require "mobile_version/version"
require "mobile_version/filters"
require "mobile_version/request"
require "mobile_version/missing_template_resolver"
require "mobile_version/controller"



module MobileVersion

  def self.included(mod)
    mod.class_eval do
      include MobileVersion::Filters
      include MobileVersion::Request
      include MobileVersion::Controller
    end 
  end

end

class ActionController::Base
  include MobileVersion
end

Mime::Type.register_alias "text/html", :mobilehtml

require 'mobile_version/railtie'

