feature 'Sign in', :devise do

	scenario 'user cannot sign in if not registered' do
		visit new_user_session_path
		fill_in 'Email', with: 'test@example.com'
		fill_in 'Password', with: 'please123'
		click_button 'Sign in'
		expect(page).to have_content('Invalid Email or password')
	end

	scenario 'user can sign in with valid credentials' do
		user = FactoryGirl.create(:user)
		visit new_user_session_path
		fill_in 'Email', with: user.email 
		fill_in 'Password', with: user.password 
		click_button 'Sign in'

		expect(page).to have_content('Signed in successfully.')
	end

end
