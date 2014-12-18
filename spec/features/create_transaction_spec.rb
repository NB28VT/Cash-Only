require 'rails_helper'


feature "User can see a list of other users" do

# As a cheap user
# I would like to search a list of other users
# So I can bug them about owing me money, or keep track of me owing them money
#
# Acceptance requirements
# *A user should be able to create a new transaction
# *A user should be able to see a list of all other users to make a transaction with



let!(:user) { FactoryGirl.create(:user) }
let!(:user2) { FactoryGirl.create(:user) }
let!(:user3) { FactoryGirl.create(:user) }



  scenario 'user can navigate to transaction page' do
    sign_in_as(user)
    click_link "Add transaction"

    expect(page).to have_content "Create a new transaction"
  end

  scenario 'user can see list of all other users' do
    sign_in_as(user)
    click_link "Add transaction"





    expect(page).to have_content user3.email
    expect(page).to have_content user2.email

  end
















end
