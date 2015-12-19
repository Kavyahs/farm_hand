class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(products_params)
    @product.user_id = current_user.id
    if @product.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  private

  def products_params
    params.require(:product).permit(
      :seller_name,
      :email,
      :images,
      :category_id,
      :sub_category_id,
      :phone,
      :address,
      :price,
      :quantity,
      :quantity_type,
      :price_type,
      :state_id,
      :district_id,
      :close_date,
      :other_details
      )
  end
end
