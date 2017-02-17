class ProductsController < ApplicationController

  layout 'admin'

  before_action :set_product, only: [:show, :edit, :update, :delete, :destroy]

  def index
    @products = Product.newest_first
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)

    if @product.save
      flash[:notice] = "Товар '#{@product.rus_title}' был создан!"
      redirect_to(products_path)
    else
      render('new')
    end
  end

  def show
  end

  def edit
  end

  def update
    if @product.update_attributes(product_params)
      flash[:notice] = "Товар '#{@product.rus_title}' был обнавлен!"
      redirect_to(product_path(@product))
    else
      render('edit')
    end
  end

  def delete
  end

  def destroy
    @product.destroy
    flash[:notice] = "Товар '#{@product.rus_title}' был уничтожен!"
    redirect_to(products_path)
  end

  private
  def set_product
    @product = Product.find(params[:id])
  end

  private
  def product_params
    params.require(:product).permit(:title, :rus_title, :description, :price, :image_url, :image_url_cart, :image_url_cart, :image_url_cart_small)
  end

end
