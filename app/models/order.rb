class Order < ActiveRecord::Base
  has_many :line_items, dependent: :destroy

  #全ての項目は必須入力
  #名前は2文字以上
  #mailadressは10文字以上
  #住所は10文字以上

  PAYMENT_TYPES = ["現金","クレジットカード","注文書"]

  def add_line_items_from_cart(cart)
    cart.line_items.each do |item|
      item.cart_id = nil
      line_items << item
    end
  end
end
