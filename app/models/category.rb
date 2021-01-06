class Category < ApplicationRecord

    def categories_for_products
        Category.where(left: (left - 1)..right).pluck(:id)
    end
end
