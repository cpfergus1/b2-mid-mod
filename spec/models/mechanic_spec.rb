RSpec.describe Mechanic, type: :model do
  it do
    should validate_presence_of :name
    should validate_presence_of :experience
  end
end
