class CreateTiktoks < ActiveRecord::Migration[6.1]
  def change
    create_table :tiktoks do |t|
      t.string :account, null: false
      t.string :comment
      t.string :outsidecolor
      t.string :insidecolor
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
