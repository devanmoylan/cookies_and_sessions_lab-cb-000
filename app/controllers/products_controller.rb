class ProductsController < ApplicationController

  def index
  end

  def add
    @item = params[:item]
    current_cart << @item
  end

end