Rails.application.routes.draw do
  resources :genders
  resources :items
  # resources :clothes
  get "items" => "items#index"
  get "items/:id" => "items#show"
  post "items" => "items#create"
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace 'api' do
    namespace 'v1' do
      # resources :users
      get "users/index" => "users#index"
      get "users/show" => "users#show"
      get "users/items" => "users#get_user_items"
    end
  end
  namespace :api do
    mount_devise_token_auth_for 'User', at: 'auth', controllers: {
      registrations: 'api/auth/registrations'
    }
  end


end

