class Worker::ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
    @new_progress = Progress.new
    @progress = Progress.find_by(product_id: @product.id)
    #@progress = Progress.find_by(product_id: @product.id, end_time: nil)
  end

  private

  def progress_params
    params.require(:progress).permit(:product_id, :worker_id, :progress_status, :begin_time, :end_time)
  end
end
