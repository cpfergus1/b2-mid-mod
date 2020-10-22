class ChangeAssociation < ActiveRecord::Migration[5.2]
  def change
    remove_reference :rides, :parks
    add_reference :rides, :park, foreign_key: true
  end
end
