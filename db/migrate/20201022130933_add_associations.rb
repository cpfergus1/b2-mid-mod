class AddAssociations < ActiveRecord::Migration[5.2]
  def change
    add_reference :mech_rides, :rides, foreign_key: true
    add_reference :mech_rides, :mechanics, foreign_key: true
  end
end
