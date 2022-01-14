class ProductsController < ApplicationController
  def index
    list_all = Product.all
    render json: list_all.as_json
  end

  def show
    id = params[:id]
    show = Product.find(id)
    render json: show
  end

  def create
    fish = Product.new(
      name: params[:name],
      price: params[:price],
      image_url: params[:image_url]
    )
    fish.save
    render json: fish.as_json
  end
end
