Rails.application.routes.draw do
  get 'friends/ross'
  get 'friends/monica'
  get 'friends/:id', to: 'friends#show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
