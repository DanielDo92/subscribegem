require_dependency "subscribegem/application_controller"

module Subscribegem
  class AccountsController < ApplicationController
    def new
      @account = Subscribegem::Account.new
      @account.build_owner
    end

    def create
      @account = Subscribegem::Account.create_with_owner(account_params)
      if @account.valid?
        force_authentication!(@account, @account.owner)
        flash[:success] = "Your account has been successfully created."
        redirect_to subscribegem.root_url(subdomain: @account.subdomain)
      else
        flash[:notice] = "Sorry, your account could not be created."
        render :new
      end
    end

    private

    def account_params
      params.require(:account).permit(:name, :subdomain,
                                      { owner_attributes:
                                          [:email, :password, :password_confirmation] })
    end
  end
end
