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

end
