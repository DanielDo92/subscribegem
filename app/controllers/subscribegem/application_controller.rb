module Subscribegem
  class ApplicationController < ActionController::Base
    def current_account
      @current_account ||= env["warden"].user(scope: :account)
    end

    helper_method :current_account

    def current_user
      @current_user ||= env["warden"].user(scope: :user)
    end

    helper_method :current_user

    def user_signed_in?
      env["warden"].authenticated?(:user)
    end

    helper_method :user_signed_in?

    def authenticate_user!
      unless user_signed_in?
        flash[:notice] = "Please sign in."
        redirect_to "/sign_in"
      end
    end

    def force_authentication!(account, user)
      env["warden"].set_user(user, scope: :user)
      env["warden"].set_user(account, scope: :account)
    end
  end
end
