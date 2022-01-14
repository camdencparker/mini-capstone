class ProductsController < ApplicationController
  def index
    list_all = Product.all
    render json: list_all.as_json
  end

  def create
    product = Product.new(
      name: params[:name],
      price: params[:price],
      image_url: params[:image_url],
      description: params[:description]
    )
    product.save
    render json: product.as_json
  end
   

  def show
    id = params[:id]
    show = Product.find(id)
    render json: show
  end

  def update
    product = Product.find(params[:id])
    product.name = params[:name] || product.name
    product.price = params[:price] || product.price
    product.image_url = params[:image_url] || product.image_url
    product.description = params[:description] || product.description
    product.save
    render json: product.as_json
  end

  def delete
    product = Product.find(params[:id])
    product.destroy
    render json: {message: "Product is gone into the dark night never to be found again"}
  end

  
end
