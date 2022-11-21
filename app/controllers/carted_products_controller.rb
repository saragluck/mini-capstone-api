class CartedProductsController < ApplicationController
  def create # comment to me
    carted_product = CartedProduct.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      status: "Carted",
      order_id: params[:order_id],
    )
    if carted_product.save
      render json: { message: "Product successfully added to cart" }, status: :created
    else
      render json: { errors: carted_product.errors.full_messages }, status: :bad_request
    end
  end

  def index
    cartproducts = CartedProduct.all
    render cartproducts.as_json
  end
end
