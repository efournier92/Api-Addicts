require 'rails_helper'

feature 'User can edit own api post' do
  let!(:user) { FactoryGirl.create(:user) }

  scenario "user successfuly edits a api " do
		login_as(user, scope: :user)
    visit root_path
    click_link 'SHARE AN API'

    fill_in('Name', with: 'YouTube')
    fill_in('URL', with: 'https://developers.google.com/youtube/')
    fill_in('Description', with: 'Embed YouTube videos anywhere!')
    choose('Yes')
    click_button 'Add API'
    expect(page).to have_content('YouTube')
    expect(page).to have_content('https://developers.google.com/youtube/')
    expect(page).to have_content('Embed YouTube videos anywhere!')

    visit apis_path
    click_link('YouTube')

    expect(page).to have_content('YouTube')

    click_on "Edit Your Api"
    fill_in('Name', with: 'YouTube Revised')
    fill_in('URL', with: 'https://developers.google.com/youtube/')
    fill_in('Description', with: 'Revised YouTube Description')
    choose('Yes')
    click_on('Update API')

    expect(page).to have_content('YouTube Revised')
    expect(page).to have_content('Revised YouTube Description')
  end
end
