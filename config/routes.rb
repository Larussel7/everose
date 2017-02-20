Rails.application.routes.draw do



  # TODO change root
  root "store#main"


  resources :deliveries


  resources :orders do
    resources :whens
  end

  resources :store, :except => [:show] do
    member do
      get 'buket'
    end
  end

  resources :line_items
  resources :carts

  resources :products do
    member do
      get :delete
    end
  end

end
