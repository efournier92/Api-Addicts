feature 'user sees navigation links', :devise do
  
	scenario 'all nav links visible' do
    visit root_path
    expect(page).to have_content 'SHARE AN API'
    expect(page).to have_content 'VIEW BY CATEGORY'
    expect(page).to have_content 'VIEW BY POPULARITY'
    expect(page).to have_content 'SHOW RANDOM'
    expect(page).to have_content 'ABOUT'
  end

end
