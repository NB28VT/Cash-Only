require 'rails_helper'


# As a vain user
# I want to be able to create an account with a username and avatar
# So people will know who I am
#
# Acceptance requriements:
#   *A user must create username when creating an account
#   *A user can add an avatar to their account, but it's not required

feature "user can sign up for a new account" do

    it "can create a new account with a username" do
      visit root_path
      first(:link, 'Sign up').click

      fill_in "User name", with: "Big Bertha"
      fill_in "Email", with: 'Bertha@gratefuldead.com'
      fill_in "Password", with: 'password'
      fill_in "Password confirmation", with: 'password'
      click_button "Sign up"

      expect(page).to have_content "Big Bertha"
    end












end
