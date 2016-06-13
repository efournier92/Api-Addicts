feature 'Sign Up', :devise do
  
	scenario 'visitor can sign up with valid email address and password' do
		visit new_user_registration_path
		fill_in 'Name', with: 'Richie Cunningham'
		fill_in 'Email', with: 'test@example.com'
		fill_in 'Password', with: 'please123'
		fill_in 'Password confirmation', with: 'please123'
		click_on('Sign up')
		txts = [I18n.t( 'devise.registrations.signed_up'), I18n.t( 'devise.registrations.signed_up_but_unconfirmed')]

    expect(page).to have_content(/.*#{txts[0]}.*|.*#{txts[1]}.*/)
  end

  scenario 'visitor cannot sign up with invalid email address' do
		visit new_user_registration_path
		fill_in 'Name', with: 'Richie Cunningham'
		fill_in 'Email', with: 'bogus'
		fill_in 'Password', with: 'please123'
		fill_in 'Password confirmation', with: 'please123'
		click_on('Sign up')

		expect(page).to have_content('Email is invalid')
  end

  scenario 'visitor cannot sign up without password' do
		visit new_user_registration_path
		fill_in 'Name', with: 'Richie Cunningham'
		fill_in 'Email', with: 'test@example.com'
		fill_in 'Password', with: ''
		fill_in 'Password confirmation', with: ''
		click_on('Sign up')

    expect(page).to have_content "Password can't be blank"
  end

  scenario 'visitor cannot sign up with a short password' do
		visit new_user_registration_path
		fill_in 'Name', with: 'Richie Cunningham'
		fill_in 'Email', with: 'test@example.com'
		fill_in 'Password', with: 'abc'
		fill_in 'Password confirmation', with: 'abc'
		click_on('Sign up')
    
		expect(page).to have_content "Password is too short"
  end

  scenario 'visitor cannot sign up without password confirmation' do
		visit new_user_registration_path
		fill_in 'Name', with: 'Richie Cunningham'
		fill_in 'Email', with: 'test@example.com'
		fill_in 'Password', with: 'password123'
		fill_in 'Password confirmation', with: ''
		click_on('Sign up')

    expect(page).to have_content "Password confirmation doesn't match"
  end

  scenario 'visitor cannot sign up with mismatched password and confirmation' do
		visit new_user_registration_path
		fill_in 'Name', with: 'Richie Cunningham'
		fill_in 'Email', with: 'test@example.com'
		fill_in 'Password', with: 'password123'
		fill_in 'Password confirmation', with: 'abc'
		click_on('Sign up')

    expect(page).to have_content "Password confirmation doesn't match"
  end

end
