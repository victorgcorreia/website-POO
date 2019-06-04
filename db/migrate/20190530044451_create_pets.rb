class CreatePets < ActiveRecord::Migration[5.2]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :species
      t.text :details
      t.datetime :birthdate
      t.references :owner, foreign_key: true
      t.boolean :available
      t.references :volunteer, foreign_key: true

      t.timestamps
    end
  end
end
