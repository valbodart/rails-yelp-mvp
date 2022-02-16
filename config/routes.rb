Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurant, except: %i[destroy edit update] do
    resources :review, only: %i[new create]
  end
end
