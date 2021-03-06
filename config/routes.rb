Rails.application.routes.draw do

  devise_for :users

  resources :cards

  resources :lists do
    member do
      patch :move
    end
  end
  resources :cards do
    member do
      patch :move
      patch :save
    end
  end


  root to: 'lists#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
