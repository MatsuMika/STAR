class Sellers::ProductsController < ApplicationController

  def new
    @products = Product.new
  end

  def index
    @products = Product.all
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to sellers_product_path, notice: "商品を追加しました"
    else
      render :new
    end
  end

  def show
    @product = Product.find(params[:id])
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    product = Product.find(params[:id])
    product.update(product_params)
    redirect_to sellers_product_path(product), notice: "商品情報を変更しました"
  end


  private

  def product_params
      params.require(:product).permit(:category_id, :name, :introduction, :price, :image, :is_active)
  end

end
