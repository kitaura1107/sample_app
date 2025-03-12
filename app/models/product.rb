class Product < ApplicationRecord
    validates :name, presence: true  # 商品名は必須
    validates :price, presence: true # 価格は必須
end
