Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'


  resources :chambers do
    resources :sondes, only: [ :new, :create ]
    resources :comments, only: [ :new, :create ]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
