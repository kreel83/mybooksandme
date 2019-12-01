Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'search', to: 'searchs#index', as: :search
  get 'store', to: 'searchs#store', as: :store
end
