module AuthenticationHelper
  def sign_in_as(user)
    visit root_path
    first(:link, 'Sign in').click
    # click_link "Sign in"
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    click_on "Log in"
  end
end
