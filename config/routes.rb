Rails.application.routes.draw do
  resources :restaurants, except: %i[destroy edit update] do
    resources :reviews, only: %i[create]
  end
end
