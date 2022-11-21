class OrdersController < ApplicationController
  def create
    product = Product.find_by(id: params[:product_id])
    calc_subtotal = product.price * params[:quantity].to_i
    calc_tax = calc_subtotal * 0.09
    calc_total = calc_subtotal + calc_tax

    @order = Order.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      subtotal: calc_subtotal,
      tax: calc_tax,
      total: calc_total,
    )
    @order.save
    render :show
  end

  def show
    @order = current_user.orders.find_by(id: params["id"])
    render :show
  end

  def index
    if current_user
      @orders = current_user.orders
      render :index
    else
      render json: [], status: :unauthorized
    end
  end
end
