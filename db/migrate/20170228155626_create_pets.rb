class CreatePets < ActiveRecord::Migration[5.0]
  def change
    create_table :pets do |t|
      t.string :nickname
      t.string :species

      t.timestamps
    end
  end
end
