class Api::CartedProductsController < ApplicationController

  def create
    carted_product = CartedProduct.new(
    product_id: params[:product_id],
    quantity: params[:quantity_id],
    user_id: current_user.id
    )
    carted_product.save
    render 'create.json.jb'
  end
end