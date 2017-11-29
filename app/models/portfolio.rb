class Portfolio < ApplicationRecord
    include Placeholder
    has_many :technologies
    accepts_nested_attributes_for :technologies, 
                                    reject_if: lambda { |attrs| attrs['name'].blank? }
    
    validates_presence_of :title, :body, :main_image, :thumb_image
    
    mount_uploader :main_image, PortfolioUploader
    mount_uploader :thumb_image, PortfolioUploader
    
    
    def self.angular
        where(subtitle: 'Angular')
    end
    
    def self.by_position
        order("position ASC")
    end
    
    scope :ruby_on_rails_portfolio_items, -> { where(subtitle: 'Ruby on Rails') }
    
    after_initialize :set_defaults
    #after_initlaize -> after new, after_create -> after create
    
    def set_defaults
        self.main_image ||= Placeholder.image_generator(600,400)
        self.thumb_image ||= Placeholder.image_generator(350,200)
    end
end
