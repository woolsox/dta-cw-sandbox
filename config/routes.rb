Rails.application.routes.draw do
  resources :users
  post 'update_avatar', to: "users#update_avatar"

  mount_devise_token_auth_for 'User', at: 'auth'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
