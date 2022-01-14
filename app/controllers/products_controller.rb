class ProductsController < ApplicationController
  def available_products
    product_arr = Product.all
    product_id = params[:id].to_i
    selected_prod = product_arr[product_id]
    
    render json: {message: selected_prod}
  end
  
  def first_product
    first = Product.first
    render json: first.as_json
  end

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
