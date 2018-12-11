Rails.application.routes.draw do


  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  resources :posts do
    resources :comments
  end
  resources :courses do
    resources :matriculas, only: [:create]
  end

  resources :matriculas, only: [:index, :destroy]
  root to: "posts#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
