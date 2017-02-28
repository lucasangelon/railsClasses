Rails.application.routes.draw do

  # The routes for the FriendsController Actions were set up for us
  # when we ran:
  # rails generate controller friends ross monica rachel phoebe chandler joey
  get 'friends/ross'

  get 'friends/monica'

  get 'friends/rachel'

  get 'friends/phoebe'

  get 'friends/chandler'

  get 'friends/joey'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
