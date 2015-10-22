Rails.application.routes.draw do

  mount_devise_token_auth_for 'User', at: 'auth'
  resources :flankers
  resources :digit_symbols
  resources :memory_impairments

  get 'user/:id',                     to: 'user#show'
  get 'user/:id/flankers',            to: 'user#index_flanker_games_for_user'
  get 'user/:id/digit_symbols',       to: 'user#index_digit_symbol_games_for_user'
  get 'users/:id/memory_impairments', to: 'user#index_memory_impairment_games_for_user'
  get 'users',                        to: 'user#index_all_users'

end
