class CreateVolunteers < ActiveRecord::Migration[5.2]
  def change
    create_table :volunteers do |t|
      t.string :cpf
      t.string :address
      t.string :tel
      t.datetime :birthdate
      t.references :user, foreign_key: true
      t.text :bio

      t.timestamps
    end
  end
end
