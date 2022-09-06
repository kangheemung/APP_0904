class ApplicationController < ActionController::Base
    include SessionsHelper
    before_action :current_user
    def login(user)
      session[:user_id] = user.id
    end
end
