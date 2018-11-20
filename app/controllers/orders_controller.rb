class OrdersController < ApplicationController
  def index
    Order.create(user_id: 1, product_id: 1, total: 10.0)
    Order.create(user_id: 2, product_id: 2, total: 5.0)
    @orders = Order.includes(:product).all
  end

  def show
    @order = Order.find(params[:id])
  end

  def new
  end

  def create
  end

  def destroy
  end
end
