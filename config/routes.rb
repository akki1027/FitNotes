Rails.application.routes.draw do
	root 'homes#top'
	devise_for :users
	resources :users, only: [:index, :show, :edit, :update]
	resources :notes
	resources :exercises, only: [:create, :edit, :update, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
