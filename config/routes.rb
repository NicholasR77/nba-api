Rails.application.routes.draw do
  resources :compositions, only: [:index, :show, :create, :update]
  resources :players, only: [:index, :show]
end
