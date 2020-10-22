class Ride < ApplicationRecord
  belongs_to :park
  has_many :mech_rides
  has_many :mechanics, through: :mech_rides
  validates_presence_of :name, :thrill
end
