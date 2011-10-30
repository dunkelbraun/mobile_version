module MobileVersion
  
  module Controller

    module ClassMethods
    
      protected
      
      def has_mobile_html_version
        append_view_path(MobileVersion::MissingTemplateResolver.new(Rails.root.join('app/views')))
        before_filter(:set_mobile_html_version)
      end

    end
  
    def self.included(mod)
      mod.extend ClassMethods
    end
  
  end
  
end
  
  
