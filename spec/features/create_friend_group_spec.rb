require 'rails_helper'


feature "User can create a new friend group" do
  # As a cheap user
  # I would like to make a list of all my friends
  # So I can bug them about owing me money
  #
  # Acceptance requirements:
  # *A user should be able to see a list of all other users
  # *A user should be able to add users to their friend group

  let!(:user) { FactoryGirl.create(:user) }
  let!(:user2) { FactoryGirl.create(:user) }
  let!(:user3) { FactoryGirl.create(:user) }

  scenario 'user can visit a friend groups page' do
    sign_in_as(user)

    click_link "Friends"

    expect(page).to have_content "Friends"
  end


  scenario 'user cannot visit friend page if not signed in' do
    visit friends_path

    expect(page).to have_content "You need to sign in or sign up before continuing."
  end



  scenario 'user cannot visit form for new friend group' do
    sign_in_as(user)

    click_link "Friends"
    click_link "Add new friend group"

    expect(page).to have_content "Create new friend group"
  end

  scenario 'user can create a new friend group' do
    sign_in_as(user)

    click_link "Friends"
    click_link "Add new friend group"

    fill_in "Group name", with: "The Donkey Show"
    click_button "Create"

    expect(page).to have_content "The Donkey Show"
  end


end
