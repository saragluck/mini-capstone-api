class ProductsController < ApplicationController
  def product
    product = Product.find_by(id: params["id"])
    render json: product.as_json
  end
end
