module MobileVersion

  class Railtie < Rails::Railtie
    config.after_initialize do
      ActionController::Base.class_eval do
        has_mobile_html_version
      end
    end
  end
end