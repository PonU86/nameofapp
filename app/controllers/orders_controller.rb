class OrdersController < ApplicationController
  def index
    @orders = Order.includes(:product).all
    @order = Order.find(params[:id])
  end

  def show
  end

  def new
  end

  def create
  end

  def destroy
  end
end
