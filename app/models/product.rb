class Product < ActiveRecord::Base

  validates :name, :company, :date, :description, :large_category, :small_category,
            :remaining_count, :price, :image_url, presence: true
end
