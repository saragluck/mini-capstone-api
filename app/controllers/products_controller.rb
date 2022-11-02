class ProductsController < ApplicationController
  def all_products
    all_products = Product.all
    render json: all_products.as_json
  end

  def apple
    apple = Product.first
    render json: apple.as_json
  end

  def corn
    corn = Product.second
    render json: corn.as_json
  end

  def pomegranate
    pomegranate = Product.third
    render json: pomegranate.as_json
  end
end
