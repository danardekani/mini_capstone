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
    @product = Product.find_by(id: 1)
    # modify
  if @products.update( name: params[:input_name],
      image_url: params[:input_image_url],
      description: params[:input_description],
      price: params[:input_price],
      )
    render 'update.json.jb'
  else
    render 'errirs.json.jb', status: unprossible_entity
  end

  def create
    @product = Product.new(
      name: params[:input_name],
      image_url: params[:input_image_url],
      description: params[:input_description],
      price: params[:input_price]
      )
    if @product.save
      render 'show.json.jb' 
    else 
      render 'errors.json.jb', status: unprossible_entity
    end 
  end
end