feature 'Sign out', :devise do

	scenario 'user signs out successfully' do
		user = FactoryGirl.create(:user)
		
		visit new_user_session_path
		fill_in 'Email', with: user.email 
		fill_in 'Password', with: user.password 
		click_button 'Sign in'
		click_link 'Log Out'
		expect(page).to have_content('Signed out successfully.') 
	end

end

