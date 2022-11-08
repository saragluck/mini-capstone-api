class ProductsController < ApplicationController
  def index
    @products = Product.all
    render templace: "products/index"
  end

  def show
    @products = Product.find_by(id: params["id"])
    render :show
  end

  def create
    products = Product.new(name: params["name"], price: params["price"], image_url: params["image_url"], description: params["description"])
    if products.save #my happy path :)
      render json: products.as_json
    else #my sad path :(
      render json: { error: products.errors.full_messages }, status: 422
    end
  end

  def update
    @products = Product.find_by(id: params["id"])

    @products.name = params["name"] || @products.name
    @products.price = params["price"] || @products.price
    @products.image_url = params["image_url"] || @products.image_url
    @products.description = params["description"] || @products.description

    @products.save
    render :show
  end

  def destroy
    products = Product.find_by(id: params["id"])
    products.destroy
    render json: { message: "This item doesn't exist any more :(. Better luck next time!" }
  end
end
