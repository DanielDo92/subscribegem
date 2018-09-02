FactoryGirl.define do
  factory :user, class: Subscribegem::User do
    sequence(:email) { |n| "test#{n}@example.com" }
    password "password"
    password_confirmation "password"
  end
end
