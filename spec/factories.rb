# Factory Girl factories

FactoryGirl.define do

  factory :user do
    sequence :email do |u|
      "emailuser#{u}@whatever.com"
    end

    password "password"
    password_confirmation "password"

  end



  factory :friend do
    sequence :group_name do |u|
      "The Awesome show#{u}"
    end
  end




end
