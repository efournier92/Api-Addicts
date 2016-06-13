require 'rails_helper'

feature 'user visits API index page' do
  let!(:user)  { FactoryGirl.create(:user) }
  let!(:api1) do
    FactoryGirl.create(:api, user: user,
    url: 'https://developers.google.com/youtube/')
  end
  let!(:api2) do
    FactoryGirl.create(:api, user: user, paid: true,
    url: 'https://developers.google.com/maps/')
  end
  scenario 'sees a list of all APIs' do
    visit apis_path

    expect(page).to have_content(api1.name)
    expect(page).to have_content(api2.name)
  end
end
