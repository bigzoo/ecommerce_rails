class Order < ApplicationRecord
    has_may :order_items
end
