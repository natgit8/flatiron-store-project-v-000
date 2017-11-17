class CartsController < ApplicationController

  def index
    @carts = Cart.all
  end 

  def show
    @cart = Cart.find(params[:id])
  end

  def checkout
    cart = Cart.find params[:id]
    cart.checkout
    redirect_to cart_path(cart)
  end

end
