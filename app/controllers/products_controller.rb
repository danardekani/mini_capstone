class ProductsController < ApplicationController
  def index
    @products = Product.all
    render = 'index.html.erb'
  end

  def show
    @product = Product.find_by(id: params[:id])
    render 'show.html.erb'
  end

  def create
    @users = User.all
    render 'create.html.erb'
  end
  
  def new
    @products = Product.new(
      name: params[:name], 
      price: params[:price],
      description: params[:description] 
      )
    @products.save
    render 'new.html.erb'
  end

  def edit
    @products = Product.find_by(id: params[:id])
    render 'edit.html.erb'
  end

end
