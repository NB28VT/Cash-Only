require 'rails_helper'


feature "User can create a new transaction with another user" do

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

    expect(page).to have_content "Create a new IOU"
  end

  scenario 'user can create a new transaction' do
    sign_in_as(user)
    click_link "Add transaction"

    # save_and_open_page


    find('#transaction_payer_id').find(:xpath, 'option[2]').select_option
    find('#transaction_payee_id').find(:xpath, 'option[3]').select_option
    fill_in "Amount", with: 5
    click_button "Create"

    save_and_open_page

    expect(page).to have_content 5


  end
















end
