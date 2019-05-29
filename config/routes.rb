Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :moods, only: [:index]

  resources :exercices, only: [:index, :show] do
    resources :achievements, only: [:create]
  end
  resources :achievements, only: [:index]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
