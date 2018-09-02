module Subscribegem
  class Member < ActiveRecord::Base
    belongs_to :account, class_name: "Subscribegem::Account"
    belongs_to :user, class_name: "Subscribegem::User"
  end
end
