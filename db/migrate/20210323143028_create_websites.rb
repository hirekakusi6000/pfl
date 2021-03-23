class CreateWebsites < ActiveRecord::Migration[6.1]
  def change
    create_table :websites do |t|
      t.string :type, null: false
      t.string :account, null: false
      t.string :comment
      t.string :insidecolor
      t.string :outsidecolor
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
