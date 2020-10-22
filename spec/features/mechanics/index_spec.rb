#Story 1
require 'rails_helper'
describe "As a user," do
  before(:each) do
    @mechanic = Mechanic.new(name: "John Adams",
                            experience: 10)
    @mechanic2 = Mechanic.new(name: "Kara Smith",
                            experience: 12)
    @mechanic3 = Mechanic.new(name: "Jim Bean",
                            experience: 7)
  end
  describe "When I visit a mechanics index page" do
    it 'I see a header saying “All Mechanics”' do
      within('#page_head') do
        expect(page).to have_content('All Mechanics')
      end
    end
    it 'And I see a list of all mechanic’s names and their years of experience' do
      expect(page).to have_content("#{@mechanic.name}")
      expect(page).to have_content("#{@mechanic.experience} years of experience")
      expect(page).to have_content("#{@mechanic2.name}")
      expect(page).to have_content("#{@mechanic2.experience} years of experience")
      expect(page).to have_content("#{@mechanic3.name}")
      expect(page).to have_content("#{@mechanic3.experience} years of experience")
    end
  end
end
# Ex:
#              All Mechanics
#    Sam Mills - 10 years of experience
#    Kara Smith - 11 years of experience
