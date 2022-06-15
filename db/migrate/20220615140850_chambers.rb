class Chambers < ActiveRecord::Migration[6.1]
  def change
    create_table :chambers do |t|
      t.string :name
      t.integer :temperature
      t.integer :hygrometrie
      t.date :day
      t.boolean :isValid
      t.references :user, null: false, foreign_key: true
    end
  end
end
