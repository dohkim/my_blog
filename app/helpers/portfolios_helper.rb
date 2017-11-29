module PortfoliosHelper
    def login_helper style = ''
        if current_user.is_a?(GuestUser)
            (link_to "Register", new_user_registration_path, class: style) + 
                " ".html_safe +
            (link_to "Login", new_user_session_path, class: style)
        else
            link_to "Logout", destroy_user_session_path, method: :delete, data: { confirm: 'Are you sure?'}, class: style 
        end 
    end
    
    def image_generator(height:, width:)
        "http://placehold.it/#{height}x#{width}"
    end
     
    def portfolio_img img, type
        
        if type =="thumb"
            img.model.thumb_image? ? img : image_generator(height: '350', width: '200')
            # if img.model.thumb_image?
            #     img
            # else
            # image_generator(height: '350', width: '200')
            # end
        else 
            img.model.main_image? ? img : image_generator(height: '600', width: '400')
            # if img.model.main_image?
            #     img
            # else
            #     image_generator(height: '600', width: '400')
            # end
        end
    end
    
    
end

