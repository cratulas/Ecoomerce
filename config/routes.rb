Rails.application.routes.draw do
  devise_for :admins
  root 'categories#index'
  # root to: "home#index"
  authenticate :admin do
    resources :products
    resources :categories
  end
  
  devise_for :users


  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
