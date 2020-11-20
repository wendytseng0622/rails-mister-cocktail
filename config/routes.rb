Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
root to: "pages#home"
  resources :cocktails, only: [:index, :show, :create, :new] do

  resources :doses, only: [:new, :create]

  end

  resources :doses, only: [:destroy]
  # delete 'reviews/:id', to: 'reviews#destroy'
end
