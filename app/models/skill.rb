class Skill < ApplicationRecord
    includes Placeholder
    validates_presence_of :title, :percent_utilized
    
    after_initialize :set_defaults
    #after_initlaize -> after new, after_create -> after create
    
    def set_defaults
        self.badge ||= Placeholder.image_generator(250,250)
    end
end
