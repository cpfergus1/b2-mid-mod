class ChangeTableName < ActiveRecord::Migration[5.2]
  def change
    rename_table :mechanics_tables, :mechanics
  end
end
