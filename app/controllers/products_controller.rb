class ProductsController < ApplicationController
  def index
    page = params[:page] || 0
    offset = page.to_i * 5
    sort = params[:sort] ? "name #{params[:sort]}" : ''
    category_id = params[:by_category_id]

    if category_id
      categories_ids = Category.find_by(id: category_id)&.categories_for_products || []
      @products = Product.where(category_id: categories_ids).order(sort).offset(offset).limit(5)
    else
      @products = Product.all.order(sort).offset(offset).limit(5)
    end
  end
end
