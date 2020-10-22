#Story 3
require 'rails_helper'
describe "As a user," do
  before(:each) do
    @mechanic = Mechanic.create!(name: "John Adams",
                              experience: 10)
    @park = Park.create!(name: "Hersey Park",
                        cost: 50.00)
    @ride1 = Ride.create!(name: "Lightning Racer",
                        thrill: "8",
                        park_id: @park.id)

    @ride2 = Ride.create!(name: "Storm Runner",
                        thrill: "7",
                        park_id: @park.id)



    MechRide.create!(ride_id: @ride1.id, mechanic_id: @mechanic.id)
    MechRide.create!(ride_id: @ride2.id, mechanic_id: @mechanic.id)

  end
  describe "When I go to a mechanics show page" do
    it "I see their name, years of experience, and names of all rides they’re working on" do
      visit "/mechanics/#{@mechanic.id}"
      expect(page).to have_content("#{@mechanic.name}")
      expect(page).to have_content("#{@mechanic.experience}")
      expect(page).to have_content("#{@ride1.name}")
      expect(page).to have_content("#{@ride2.name}")
    end
    it "And I also see a form to add a ride to their workload" do
      visit "/mechanics/#{@mechanic.id}"
      expect(page).to have_content("Add ride for maintenance:")
      expect(page).to have_field("ride_id")
    end
  end
  describe "When I fill in that field with an id of an existing ride and hit submit" do
      before(:each) do
        @ride3 = Ride.create!(name: "The Great Bear",
                            thrill: "9",
                            park_id: @park.id)
        visit "/mechanics/#{@mechanic.id}"
        fill_in "ride_id", with: "#{@ride3.id}"
      end
    it "I’m taken back to that mechanics show page" do
      click_on "Submit"
      expect(current_path).to eq("/mechanics/#{@mechanic.id}")

    end
    it "And I see the name of that newly added ride on this mechanics show page" do
      click_on "Submit"
      expect(page).to have_content("#{@ride3.name}")
    end
  end
end
# Ex:
# Mechanic: Kara Smith
# Years of Experience: 11
# Current rides they’re working on:
# The Frog Hopper
# Fahrenheit
# The Kiss Raise
# Add a ride to workload:
# _pretend_this_is_a_textfield_
#                       Submit
