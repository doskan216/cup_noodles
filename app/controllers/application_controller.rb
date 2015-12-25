class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authorize
  before_action :now
  private

  def current_cart
    Cart.find(session[:cart_id])
  rescue ActiveRecord::RecordNotFound
    cart = Cart.create
    session[:cart_id] = cart.id
    cart
  end


  def now
    @time = Time.zone.now
  end

  def authorize
    unless AdminUser.find_by_id(session[:resource_id])
      redirect_to admin_user_session_url,notice:"ログインしてください"
    end
  end

end
