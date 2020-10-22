class FixSpelling < ActiveRecord::Migration[5.2]
  def change
    remove_reference :mech_rides, :rides
    remove_reference :mech_rides, :mechanics

    add_reference :mech_rides, :ride, foreign_key: true
    add_reference :mech_rides, :mechanic, foreign_key: true
  end
end
