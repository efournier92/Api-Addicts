require 'rails_helper'

feature 'user deletes own api post' do
  let!(:user) { FactoryGirl.create(:user) }
  scenario 'user successfuly delete a api' do
		login_as(user, scope: :user)
    visit root_path
    click_link 'SHARE AN API'

    fill_in('Name', with: 'YouTube')
    fill_in('URL', with: 'https://developers.google.com/youtube/')
    fill_in('Description', with: 'Embed YouTube videos anywhere!')
    choose('Yes')
    click_button 'Add API'
    
		visit apis_path
    click_link 'YouTube'
		click_on 'Delete'

    expect(page).to have_content('Posting Deleted Successfully')
  end
end
