class ProductsController < ApplicationController
  def index
    products = Product.all
    render json: products.as_json
  end

  def show
    products = Product.find_by(id: params["id"])
    render json: products.as_json
  end

  def create
    products = Product.new(name: "Avocado", price: 0.68, image_url: "https://images.heb.com/is/image/HEBGrocery/000318627", description: "Officially a fruit, you can use it to make guacamole or avocado toast")
    products.save
    render json: products.as_json
  end
end
