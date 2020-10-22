class ChangeAsociations < ActiveRecord::Migration[5.2]
  def change
    remove_reference :rides, :mechanic
  end
end
