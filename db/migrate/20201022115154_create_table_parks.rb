class CreateTableParks < ActiveRecord::Migration[5.2]
  def change
    create_table :parks do |t|
      t.string :name
      t.float :cost
    end
  end
end
