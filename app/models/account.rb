class Account < ApplicationRecord
    has_may :orders
end
