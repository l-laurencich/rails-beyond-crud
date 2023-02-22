Rails.application.routes.draw do
  resources :restaurants do 

    resources :reviews, only: [:new, :create]

    collection do 
      get :top
    end

    member do 
      get :chef
    end

  end

  resources :reviews, only: [:destroy]
end









# Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

# Defines the root path route ("/")
# root "articles#index"