Rails.application.routes.draw do
  get 'addresses/index'
  get 'addresses/create'
  get 'addresses/edit'
  get 'addresses/update'
  get 'addresses/destroy'
  get 'orders/index'
  get 'orders/show'
  get 'orders/update'
  get 'orders/create'
  get 'users/index'
  get 'users/show'
  get 'users/update'
  get 'cart_products/index'
  get 'cart_products/create'
  get 'cart_products/update'
  get 'cart_products/destroy'
  get 'products/index'
  get 'products/show'
  devise_for :sellers
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

	root 'products#top'

	

end
