class ApplicationController < ActionController::Base
    protect_from_forgery

  protected
    def after_sign_in_path_for(resource)
      sign_in_url = new_user_session_url
      if request.referer == sign_in_url
        super
      else
        stored_location_for(resource) || request.referer || legislation_consultation_path(@legislation)
      end
    end
end

