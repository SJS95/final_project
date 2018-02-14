class ProductsController < ApplicationController
  def index
    @products = Product.search(params[:term])
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def edit
    @product = Product.find(params[:id])
  end

  def create
    @product = Product.new(product_params)

    if @product.save
      redirect_to @product
    else
      render 'new'
    end
  end

  def update
    @product = Product.find(params[:id])

    if @product.update(product_params)
      redirect_to @product
    else
      render 'edit'
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    redirect_to product_path
  end

  private
  def product_params
    params.require(:product).permit(:title, :description, :image, :brand, :manufacturer, :model, :price, :term)
  end
end