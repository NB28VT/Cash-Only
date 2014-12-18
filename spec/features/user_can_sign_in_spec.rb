require 'rails_helper'
require 'spec_helper'

feature "User can create an account" do
#
# As a hungry user
# I want to sign up for Cash Only
# So I can track who I owe money to
#
# Acceptance requirements:
# *A user must be able to create an account
# *A user should get a notice saying they've succesfully created an account

  context "as a signed in user" do
    let(:user){FactoryGirl.create(:user)}
      before :each do
        sign_in_as(user)
      end
    end

    it "can see the dashboard page" do

      # expect to be on the page


    end


  end
