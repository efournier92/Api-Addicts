# require 'rails_helper'
# require 'capybara/poltergeist'

# Capybara.javascript_driver = :poltergeist

# Capybara.register_driver :poltergeist do |app|
#   Capybara::Poltergeist::Driver.new(app, {js_errors: false})
# end

# feature 'user can upvote & downvote an API' do
#   let!(:user) { FactoryGirl.create(:user) }
#   let!(:api)  { FactoryGirl.create(:api) }

#   scenario 'sees API with no votes' do
# 		login_as(user, scope: :user)
#     visit apis_path
#     click_link api.name

#     within('div#upvote') do
#       expect(page).to have_content('0')
#     end

#     within('div#downvote') do
#       expect(page).to have_content('0')
#     end
#   end

#   scenario 'logged in user upvotes an api and sees change without reloading', js: true do
# 		login_as(user, scope: :user)
#     visit apis_path
#     click_link api.name
#     find('div#upvote').click
#     within('div#upvote') do
#       expect(page).to have_content('1')
#     end

#     within('div#downvote') do
#       expect(page).to have_content('0')
#     end
#   end

#   scenario 'user cannot vote if not logged in', js: true do
#     visit apis_path
#     click_link api.name
#     find('div#upvote').click
#     within('div#upvote') do
#       expect(page).to have_content("0")
#     end

#     within('div#downvote') do
#       expect(page).to have_content("0")
#     end
#   end
# end
