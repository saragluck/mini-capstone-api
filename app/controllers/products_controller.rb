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
    products = Product.new(name: params["name"], price: params["price"], image_url: params["image_url"], description: params["description"])
    products.save
    render json: products.as_json
  end

  def update
    products = Product.find_by(id: params["id"])

    products.name = params["name"] || products.name
    products.price = params["price"] || products.price
    products.image_url = params["image_url"] || products.image_url
    products.description = params["description"] || products.description

    products.save
    render json: products.as_json
  end
end
