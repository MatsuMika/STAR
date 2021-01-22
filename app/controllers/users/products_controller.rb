class Users::ProductsController < ApplicationController

	def top
		@categories = Category.all
		@products = Product.all
	end

	def about
	end

  def index
  	@producrs = Product.all
  	@categories = Category.all
  	if params[:category_id]
  	 	@category = Category.find(params[:category_id])
  	 	@products = @products.where(category_id: params[:category_id])
  	end
  end

  def show
  end
end
