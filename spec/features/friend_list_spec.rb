require 'rails_helper'


feature "User can create a list of friends" do

# As a cheap user
# I would like to make a list of all my friends
# So I can bug them about owing me money
#
# Acceptance requirements:
# *A user should be able to see a list of all other users
# *A user should be able to add users to their friend group
#


let!(:user) { FactoryGirl.create(:user) }
let!(:user2) { FactoryGirl.create(:user) }
let!(:user3) { FactoryGirl.create(:user) }



  scenario 'user can see a list of other users' do
    sign_in_as(user)
    click_link "Find some freinds"

    expect(page).to have_content "Users"
  end
end
