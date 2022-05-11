class Admin::ProductsController < ApplicationController
  before_action :authenticate_admin!

  def new
    @product = Product.new
    @genres = Genre.all
  end

  def create
    @product = Product.new(products_params)
    if @product.save
      redirect_to products_path#, notice: "商品 #{@product.genre.name} を登録しました。"
    else
      render :new
    end
  end

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def edit
    @product = Product.find(params[:id])
    @genres = Genre.all
  end

  def update
    @product = Product.find(params[:id])
    @product.update(products_params)
    redirect_to admin_product_path
  end

  private

  def products_params
    params.require(:product).permit(:genre_id, :delivery_date, :product_count)
  end
end
