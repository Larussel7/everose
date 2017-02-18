Rails.application.routes.draw do
  
  # TODO change root
  root "products#index"

  resources :line_items
  resources :carts

  resources :products do
    member do
      get :delete
    end
  end

end
