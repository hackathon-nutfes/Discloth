Rails.application.routes.draw do
  resources :genders
  resources :items
  # resources :clothes
  get "items" => "items#index"
  get "items/:id" => "items#show"
  post "items" => "items#create"
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
