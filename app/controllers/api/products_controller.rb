class Api::ProductsController < ApplicationController
  def index
    # show ALL of the products
    # get ALL the produts from the DB
    @products = Product.all
    render 'index.json.jb'
  end

  def show
    the_id = params[:id]
    @product = Product.find_by(id:params[:id])
    render 'show.json.jb'
  end

  def update
    # find the product in the db
    the_id = params[id:1]
    @products = Product.find_by(id: 1)
    # modify
    @products.update(    
      @products.name = params[:input_name],
      @products.image_url = params[:input_image_url],
      @products.description = params[:input_description],
      @products.price = params[:input_price],
      @products.name = params[:input_image_url]
      )
    render 'update.json.jb'
  end
end
