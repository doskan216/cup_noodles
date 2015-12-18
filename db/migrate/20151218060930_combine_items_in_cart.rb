class CombineItemsInCart < ActiveRecord::Migration
  def up
    #カート内の一つの商品に対して複数の帆イン目があった場合には、一つの品目に置き換える
    Cart.all.each do |cart|
      #カート内の各商品の数をカウントする
      sums = cart.line_items.group(:product_id).sum(:quantity)

      sums.each do |product_id, quantity|
        if quantity > 1
          cart.line_items.where(product_id: product_id).delete_all

          #一つの品目に置き換える
          cart.line_items.create(product_id: product_id, quantity: quantity)
        end
      end
    end
  end
end