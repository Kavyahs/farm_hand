class ProductsController < ApplicationController

  def index
    @products = Product.where('category_id = ?', params[:category_id])
  end

  def new
    if current_user.blank?
      flash[:error] = "Please Sign In/Sign Up to Sell Your Product"
      redirect_to root_path
    else
      @sub_categories = SubCategory.where(:category_id => params[:category_id])
      @product = Product.new
    end
  end

  def create
    @product = Product.new(products_params)
    @product.user_id = current_user.id
    @product.category_id = params['product']['category_id']
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
