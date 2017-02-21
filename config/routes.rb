Rails.application.routes.draw do







  # TODO change root
  root "store#main"


  resources :deliveries, only: [:new, :create]


  resources :orders do
    resources :whens, only: [:new, :create]
    resources :extras, only: [:new, :create]
    resources :notes, only: [:new, :create]
    resources :payments, only: [:new, :create]
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
