class Api::OrdersController < ApplicationController
  def index
    if current_user
      @order = Order.all
      render 'show.json.jb'
    else 
      render json:[], status: :unauthorized 
    end
  end

  def create
    user_id :params[:id]
    product_id :params[:product_id]
    quantity :params[:quantity]
    subtotal :params[:subtotal]
  end
end