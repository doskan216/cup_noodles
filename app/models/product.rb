class Product < ActiveRecord::Base
  has_many :line_items
  has_many :orders, through: :line_items
  before_destroy :ensure_not_referenced_by_any_line_item

#全ての項目は必須入力
  validates :name, :company, :date, :description, :large_category, :small_category,
            :remaining_count, :price, :image_url, presence: true
#商品名は20文字以下
#商品説明は29文字以下
#在庫数・値段は数字
#画像urlは末尾が.jpg

  private
  #この商品を参照している品目がないか確認する
  def ensure_not_referenced_by_any_line_item
    if line_items.empty?
      return true
    else
      errors.add(:base,'品目が存在します')
      return false
    end
  end
end
