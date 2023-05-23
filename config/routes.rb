Rails.application.routes.draw do
  resources :lists do 
    resource :comments
  end
  get '/lists/:list_id/comments/:id', to: 'comments#destroy', as: 'comments'
  root 'lists#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
