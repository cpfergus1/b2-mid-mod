class Ride < ApplicationRecord
  validates_presence_of :name, :thrill
  belongs_to :park
end
