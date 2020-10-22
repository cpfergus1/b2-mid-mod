RSpec.describe Mechanic, type: :model do
  it do
    should validate_presence_of :name
    should validate_presence_of :experience
    should have_many(:rides).through(:mech_rides)
  end
end
