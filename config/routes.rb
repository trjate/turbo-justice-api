Rails.application.routes.draw do

  mount_devise_token_auth_for 'User', at: 'auth'
  resources :flankers

  get 'user/:id',                to: 'user#show'
  get 'user/:id/flankers',       to: 'user#index_flanker_games_for_user'
  get 'users',                   to: 'user#index_all_users'

  #testing

end
