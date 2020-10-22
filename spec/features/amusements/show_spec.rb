#Story 2
require 'rails_helper'
describe "As a visitor," do
  before(:each) do

    @park = Park.create!(name: "Hersey Park",
                        cost: 50.00)

    @ride1 = @park.rides.create!(name: "Lightning Racer",
                        thrill: "8")
    @ride2 = @park.rides.create!(name: "Storm Runner",
                        thrill: "7")
    @ride3 = @park.rides.create!(name: "The Great Bear",
                        thrill: "9")

    visit "/parks/#{@park.id}"
  end
  describe "When I visit an amusement park’s show page" do
    it "I see the name and price of admissions for that amusement park" do
      expect(page).to have_content("#{@park.name}")
      expect(page).to have_content("Admissions: $#{@park.cost}")
    end
    it "And I see the names of all the rides that are at that theme park listed in alphabetical order" do
      expect(page).to have_content(@ride1.name)
      expect(page).to have_content(@ride2.name)
      expect(page).to have_content(@ride3.name)
      save_and_open_page

    end
    it "And I see the average thrill rating of this amusement park’s rides" do
      expect(Ride.average(:thrill)).to eq(8)
    end
  end
end
# Ex: Hershey Park
#    Admissions: $50.00
#
#    Rides:
#           1. Lightning Racer
#           2. Storm Runner
#           3. The Great Bear
#    Average Thrill Rating of Rides: 7.8/10
