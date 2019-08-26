require 'rails_helper'

feature "User can search by zip" do
  scenario "and see nearest propane and electric stations within 6 miles" do
    visit root_path

    within 'nav' do
      fill_in 'q', with: '80203'
      click_on 'Locate'
    end

    expect(current_path).to eq(search_path)
    expect(page).to have_css('.station', count: 10)

    within(first('.station')) do
      expect(page).to have_css('.name')
      expect(page).to have_css('.address')
      expect(page).to have_css('.fuel_type')
      expect(page).to have_css('.distance')
      expect(page).to have_css('.access_times')
    end
  end
end
