Rails.application.routes.draw do
  get 'order_items/update'
  get 'categories/index'
  get 'categories/create'
  get 'categories/edit'
  get 'categories/update'
  get 'categories/destroy'
  get 'addresses/index'
  get 'addresses/create'
  get 'addresses/edit'
  get 'addresses/update'
  get 'addresses/destroy'
  get 'cart_products/index'
  get 'cart_products/create'
  get 'cart_products/update'
  get 'cart_products/destroy'
  devise_for :sellers
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

	root 'products#top'



end
