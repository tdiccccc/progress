class Worker::ProgressesController < ApplicationController
  before_action :authenticate_worker!

  def index
    #@progresses = worker.progress
  end

  def show
    #@progress = current_worker.progress
  end

  def start
    @progress = Progress.new
    @progress.product_id = params[:progress][:product_id]
    @progress.worker_id = current_worker.id
    @progress.begin_time = DateTime.now
    @progress.save!
    redirect_to product_path(@progress.product_id)
  end

  def finish
    @progress = Progress.find(params[:progress][:id])
    @progress.end_time = DateTime.now
    @progress.save!
    redirect_to products_path
  end

  private

  def progress_params
    params.require(:progress).permit(:product_id, :worker_id, :progress_status, :begin_time, :end_time)
  end
end
