class CreateFriends < ActiveRecord::Migration[5.0]

  # This will execute the migration for us.
  # We used to have Up and Down methods before, we can still use them
  # but Rails can usually guess what it needs to do to rollback on its own.
  #
  # Obviously there are going to be exceptions to this so it is important to
  # know that you _can_ define your own up / down methods.
  def change
    create_table :friends do |t|
      t.string :first_name
      t.string :last_name
      t.string :career
      t.string :famous_sentence

      # Generates create_at and updated_at timestamps for us.
      t.timestamps
    end
  end

  # This was the way to do it before, now we only use it in specific cases.
  #
  # def up
  #   create_table :friends do |t|
  #     t.string :first_name
  #     t.string :last_name
  #     t.string :career
  #     t.string :famous_sentence
  #
  #     t.timestamps
  #   end
  # end

  # This is dangerous. If we rollback, we will get rid of this column.
  # But when we try to go back up, we'll have issues as the table will already exist.
  # Be careful when manually executing migrations.
  #
  # def down
  #   remove_column :friends, :career, :string
  # end
end
