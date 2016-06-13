require 'rails_helper'

feature 'user adds a new review' do
  let!(:user)  { FactoryGirl.create(:user) }
  let!(:api1)  { FactoryGirl.create(:api, user: user) }
  let!(:api2)  { FactoryGirl.create(:api, user: user, paid: true) }

  scenario 'successfully adds API review' do
		login_as(user, scope: :user)
    visit apis_path
    click_link(api1.name)
    fill_in 'review_body', with: 'This is the most useful API ever!'
    choose('5')
    click_button 'Add Review'

    expect(page).to have_content('Review Submitted Successfully!')
    expect(page).to have_content('This is the most useful API ever!')
    expect(page).to have_content('5')
  end

  scenario 'fails to submit review if rating is missing' do
		login_as(user, scope: :user)
    visit apis_path
		click_link api1.name
    fill_in 'review_body', with: 'This is the most useful API ever!'
    click_button 'Add Review'

    expect(page).to have_content('Review Submission Failure')
  end

  scenario 'fails to submit review if body is missing' do
		login_as(user, scope: :user)
    visit apis_path
    click_link api1.name
    choose('2')
    click_button 'Add Review'

    expect(page).to have_content('Review Submission Failure')
  end
end
