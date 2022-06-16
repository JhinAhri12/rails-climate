class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.references :chamber, null: false, foreign_key: true
      t.text :description
      t.boolean :isValid
      t.timestamps
    end
  end
end
