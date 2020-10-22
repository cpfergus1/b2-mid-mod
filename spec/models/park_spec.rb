RSpec.describe Park, type: :model do
  it do
    should validate_presence_of :name
    should validate_presence_of :cost
    should have_many :rides
  end
end
