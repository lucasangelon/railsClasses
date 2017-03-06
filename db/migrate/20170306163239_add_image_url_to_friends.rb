class AddImageUrlToFriends < ActiveRecord::Migration[5.0]
  # This was added via:
  #
  # rails generate migration add_image_url_to_friends image_url:string
  #
  # Hence why conventions are so important when using ActiveRecord!
  def change
    add_column :friends, :image_url, :string
  end
end
