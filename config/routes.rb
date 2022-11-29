Rails.application.routes.draw do
  devise_for :users, defaults: { format: :json }, controllers: { invitations: 'users_invitations' }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "users#index"
end
