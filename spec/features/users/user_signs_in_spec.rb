require "rails_helper"

feature ':user signs in' do
  let(:user1) { FactoryGirl.create(:user) }
  scenario 'an existing :user provides correct information' do
    visit root_path

    click_link 'Sign In'
    fill_in 'Email', with: user1.email
    fill_in 'Password', with: user1.password

    click_button 'Sign In'
    expect(page).to have_content('Welcome Back!')
    expect(page).to have_content('Sign Out')
  end

  scenario "non existent :user provides email and password " do
    visit root_path

    click_link 'Sign In'
    fill_in 'Email', with: 'something@some.com'
    fill_in 'Password', with: 'password'

    click_button 'Sign In'
    expect(page).to_not have_content('Welcome Back')
    expect(page).to_not have_content('Sign Out')
    expect(page).to have_content('Invalid email or password.')
  end

  scenario 'a existing email with wrong password' do
    visit root_path

    click_link 'Sign In'
    fill_in 'Email', with: user1.email
    fill_in 'Password', with: "dfgnsdkfjzgnsdkfjn"

    click_button 'Sign In'
    expect(page).to have_content('Invalid email or password.')
    expect(page).to_not have_content('Sign Out')
  end

  scenario 'already signed in :user cant resign in ' do
    visit new_user_session_path
    fill_in 'Email', with: user1.email
    fill_in 'Password', with: user1.password
    
    click_button 'Sign In'
    expect(page).to have_content('Sign Out')
    expect(page).to_not have_content('Sign In')

    visit new_user_session_path
    expect(page).to have_content('You are already signed in.')
  end
end
