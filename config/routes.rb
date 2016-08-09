Rails.application.routes.draw do
	root 'home#index'
	resources :customers, only: [:index, :show, :new, :create]
	resources :appointments, only: [:index, :show, :new, :create]
end
