class Api::ProductsController < ApplicationController

  before_action :authenticate_admin, only: [:create, :update]
  
  def index
  #   if params[:search]
  #     @product = Product.where("name like ?", "%#{params[:search]}%")
  #   else
  #     product = Product.all 
  #   end

  #   @product = @product.order(:id => :asc)
  #     render 'index.json.jb'
  # end
  
  @product = Product.all

  if params[:category]
    category = Category.find_by(name: params[:category])
    @products = cateogry.products
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
end