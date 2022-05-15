class Worker::ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  private

  def products_params
    params.require(:product).permit(:genre_id, :delivery_date, :product_count)
  end
end
