Rails.application.routes.draw do
  # get 'cocktails/', to: "cocktails#index"

  # get 'cocktails/new', to: "cocktails#new"
  # post 'cocktails', to: "cocktails#create"

  # get 'cocktails/:id', to: "cocktails#show"

  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [:new, :create]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
