# Helper methods defined here can be accessed in any controller or view in the application

module Intrjekt
  class App
    module UsersHelper
      # def user_logged_in?
      #   !!current_user
      # end

      # def current_user
      #   return if session[:email].nil?
      #   @current_user ||= User.find_by(email: session[:email])
      # end
    end

    helpers UsersHelper
  end
end
