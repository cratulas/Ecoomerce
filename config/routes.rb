Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  devise_for :admins
  root to:"home#index"

  authenticate :admin do
    resources :products
    resources :categories
    resources :variants
  end
  
  resource :cart, only: [:show, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
