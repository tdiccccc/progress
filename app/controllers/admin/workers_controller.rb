class Admin::WorkersController < ApplicationController
  def index
    @workers = Worker.all
  end

  def show
  end

  def edit
  end
end
