class CreatePets < ActiveRecord::Migration[5.2]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :description
      t.text :details
      t.string :image
      t.string :link
      t.string :owner
      t.boolean :available
      t.integer :age
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
