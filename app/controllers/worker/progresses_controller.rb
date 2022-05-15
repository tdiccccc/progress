class Worker::ProgressesController < ApplicationController
  before_action :authenticate_worker!
  
  def index
  end
  
  def show
   
  end
  
  private
  
  def progress_params
    params.require(:progress).permit(:product_id, :worker_id, :progress_status, :begin_time, :end_time)
  end
end
