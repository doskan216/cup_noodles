class StoreController < ApplicationController
  skip_before_filter :authorize
  def index
    if params[:large_category]
      @products = Product.where(large_category: params[:large_category])
    else
      @products = Product.all
    end
  end
end
