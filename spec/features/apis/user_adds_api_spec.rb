require 'rails_helper'

feature 'user adds a new api' do
  let!(:user) { FactoryGirl.create(:user) }

  scenario 'visits new api page from root index' do
		login_as(user, scope: :user)
		visit root_path
		click_link "SHARE AN API"
		
		expect(page).to have_field('Name')
    expect(page).to have_field('URL')
    expect(page).to have_field('Description')
    expect(page).to have_content('Free?')
	end

  scenario 'successfully adds a free api' do
		login_as(user, scope: :user)
    visit new_api_path

    fill_in('Name', with: 'YouTube')
    fill_in('URL', with: 'https://developers.google.com/youtube/')
    fill_in('Description', with: 'Embed YouTube videos anywhere!')
    choose('Yes')
    click_button 'Add API'
    expect(page).to have_content('YouTube')
    expect(page).to have_content('https://developers.google.com/youtube/')
    expect(page).to have_content('Embed YouTube videos anywhere!')
  end

  scenario 'successfully adds a paid api' do
		login_as(user, scope: :user)
    visit new_api_path

    fill_in('Name', with: 'Google Maps')
    fill_in('URL', with: 'https://developers.google.com/maps/')
    fill_in('Description', with: 'The best maps API, period.')
    choose('No')
    click_button 'Add API'
    expect(page).to have_content('Google Maps')
    expect(page).to have_content('https://developers.google.com/maps/')
    expect(page).to have_content('The best maps API, period.')
  end

end
