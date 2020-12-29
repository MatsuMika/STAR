Rails.application.routes.draw do

	devise_for :sellers, controllers: {
    sessions: 'sellers/sessions',
    passwords: 'sellers/passwords',
    registrations: 'sellers/registrations'
  }

  namespace :sellerss do
    root 'users#top'
    resources :users, only: [:index, :show, :edit, :update]
  end


	root 'users/products#top'
	get 'users/about' => 'users/products#about'

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations'
 	}

 	scope module: :users do
    get 'users/my_page' => 'users#show'
    get 'users/edit' => 'users#edit'
    patch 'users' => 'users#update'
    delete 'cart_products/destroy_all' => 'cart_products#destroy_all'
    resources :products, only: [:index, :show]
  end




end
