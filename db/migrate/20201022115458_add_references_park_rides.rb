class AddReferencesParkRides < ActiveRecord::Migration[5.2]
  def change
    add_reference :rides, :parks, foreign_key: true
  end
end
