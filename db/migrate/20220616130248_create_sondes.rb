class CreateSondes < ActiveRecord::Migration[6.1]
  def change
    create_table :sondes do |t|
      t.string :mesure
      t.date :day
      t.string :valeur
      t.references :chamber, null: false, foreign_key: true
      t.timestamps
    end
  end
end
