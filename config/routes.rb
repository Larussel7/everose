Rails.application.routes.draw do

  get 'line_items/index'

  get 'line_items/show'

  get 'line_items/new'

  get 'line_items/edit'

  resources :products do
    member do
      get :delete
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
