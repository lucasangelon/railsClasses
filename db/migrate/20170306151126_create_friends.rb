class CreateFriends < ActiveRecord::Migration[5.0]
  def change
    create_table :friends do |t|
      t.string :first_name
      t.string :last_name
      t.string :career
      t.string :famous_sentence

      t.timestamps
    end
  end
end
