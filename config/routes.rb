Rails.application.routes.draw do
  get 'relationships/follow_user'

  get 'relationships/unfollow_user'

  post ':user_name/follow_user', to: 'relationships#follow_user', as: :follow_user

  post ':user_name/unfollow_user', to: 'relationships#unfollow_user', as: :unfollow_user

  resources :users, except: [:destroy, :create]
  resources :messages
  mount_devise_token_auth_for 'User', at: 'auth'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
