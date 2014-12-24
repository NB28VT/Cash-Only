require 'rails_helper'

feature "User can sign into an account" do
#
# As a hungry user
# I want to sign up for Cash Only
# So I can track who I owe money to
#
# Acceptance requirements:
# *A user must be able to create an account
# *A user should get a notice saying they've succesfully created an account

  let!(:user) { FactoryGirl.create(:user) }

  scenario "as a signed in user" do
      sign_in_as(user)

      expect(page).to have_content user.email
  end

  scenario 'sign in with invalid information doesn\' work' do

    visit root_path
    first(:link, 'Sign in').click

    fill_in "Email", with: 'wrong'
    fill_in "Password", with: 'nope'
    click_on "Log in"

    expect(page).to have_content "Invalid email or password"

  end


end


# def sign_in_as(user)
#   visit root_path
#   click_link "Sign in"
#   fill_in "Email", with: user.email
#   fill_in "Password", with: user.password
#   click_on "Log in"
# end
