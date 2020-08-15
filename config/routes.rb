Rails.application.routes.draw do
  devise_for :admins
	root 'homes#top'
	get 'stopwatch' => 'homes#stopwatch'
	devise_for :users
	resources :users, only: [:index, :show, :edit, :update]
	get 'users/:id/my_notes' => 'users#my_notes', as: 'my_notes'
	resources :notes do
		resources :exercises, only: [:create, :edit, :update, :destroy]
	end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
