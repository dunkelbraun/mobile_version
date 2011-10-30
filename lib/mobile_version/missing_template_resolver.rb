module MobileVersion

  class MissingTemplateResolver < ::ActionView::FileSystemResolver

    def initialize(path)
      super(path)
    end

    def find_templates(name, prefix, partial, details)
      self.instance_variable_set(:@pattern, ':prefix/:action{.:locale,}.html{.:handlers,}') if details[:formats] == [:mobilehtml]
      super(name, prefix, partial, details)
    end

  end
  
end