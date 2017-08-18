class Product < ApplicationRecord
  has_may :order_items
end
