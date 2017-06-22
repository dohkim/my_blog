module DefaultPageContent
    extend ActiveSupport::Concern
    
    included do
         before_action :set_page_defaults
    end
 
    def set_page_defaults
      @page_title = "My Blog | MY Portfolio Website"
      @seo_keywords = "Doh kim portfolio"
    end
    
end