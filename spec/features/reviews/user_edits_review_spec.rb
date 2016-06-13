require 'rails_helper'

feature 'user edits own review' do
  let!(:user)  { FactoryGirl.create(:user) }
  let!(:api1)  { FactoryGirl.create(:api, user: user) }
  let!(:api2)  { FactoryGirl.create(:api, user: user, paid: true) }

  scenario 'successfully updates review' do
		login_as(user, scope: :user)
    visit apis_path
    click_link(api1.name)
    fill_in 'review_body', with: 'This is the best API ever!'
    choose('4')
    click_button 'Add Review'
    click_on 'Edit Review'
    fill_in 'review_body', with: 'This is an update about the best API ever!'
    expect(page).to have_content('Rating')
    choose('3')
    click_button 'Update Review'
    expect(page).to have_content('Review Updated!')
  end
end
