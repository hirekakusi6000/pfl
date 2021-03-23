class RecordsSnss < ActiveRecord::Migration[6.1]
  def change
    drop_table :snsses
  end
end
