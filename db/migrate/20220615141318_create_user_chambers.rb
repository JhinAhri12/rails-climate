class CreateUserChambers < ActiveRecord::Migration[6.1]
  def change
    create_table :user_chambers do |t|
      t.references :user, null: false, foreign_key: true
      t.references :chamber, null: false, foreign_key: true

      t.timestamps
    end
  end
end
