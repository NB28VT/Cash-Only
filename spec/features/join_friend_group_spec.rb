require 'rails_helper'

#
# As a social user
# I would like to be able to join a friend group
# So that I can track IOUs with my friends
#
# Acceptance requirements:
# *A user should be able to visit a friend group
# *A user should be able to join a friend group


feature "User can join a friend group" do

  let!(:user) { FactoryGirl.create(:user) }


  let!(:friend) { FactoryGirl.create(:friend) }
  let!(:friend2) { FactoryGirl.create(:friend) }
  let!(:friend3) { FactoryGirl.create(:friend) }

  it "can view a list of friend groups" do
    sign_in_as(user)
    click_link "Friends"

    expect(page).to have_content(:friend)
  end

  it "can visit a friend group page" do
    sign_in_as(user)
    click_link "Friends"
    click_link friend.group_name

    expect(page).to have_content(friend.group_name)
  end


  it "can join a freind group page" do
    sign_in_as(user)
    click_link "Friends"
    click_link friend.group_name


    click_button "Join this group!"

    click_link "Friends"
    click_link friend.group_name

    expect(page).to have_content(user.email)
  end






end
