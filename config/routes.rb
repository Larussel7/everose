Rails.application.routes.draw do

  #temp root
  root "products#index"

  resources :line_items

  resources :products do
    member do
      get :delete
    end
  end

end
