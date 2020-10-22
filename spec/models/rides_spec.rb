RSpec.describe Ride, type: :model do
  it do
    should validate_presence_of :name
    should validate_presence_of :thrill
    should belong_to :park
    should have_many(:mechanics).through(:mech_rides)
  end
end
