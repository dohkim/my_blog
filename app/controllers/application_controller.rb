class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
    include DeviseWhitelist
    include SetSource
    include CurrentUserConcern
    def current_user
      super || OpenStruct.new(name: "Guest User", first_name: "Guest", last_name: "User", email: "guest@exam.com")
    end
end
