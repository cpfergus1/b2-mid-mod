class Park < ApplicationRecord
  validates_presence_of :name, :cost
  has_many :rides
end
