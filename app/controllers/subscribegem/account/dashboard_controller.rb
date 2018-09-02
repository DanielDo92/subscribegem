require_dependency "subscribegem/application_controller"

module Subscribegem
  class Account::DashboardController < ApplicationController
    before_filter :authenticate_user!
    def index

    end
  end
end
