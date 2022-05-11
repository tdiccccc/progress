class Admin::ProductsController < ApplicationController
  before_action :authenticate_admin!

  def new
    @product = Product.new
    @genres = Genre.all
  end

  def create
    @product = Product.new(product_params)
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
  end

  def edit
  end

  private

  def product_params
    params.require(:product).permit(:genre_id, :delivery_date, :product_count)
  end
end
