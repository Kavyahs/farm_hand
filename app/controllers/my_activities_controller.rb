class MyActivitiesController < ApplicationController
  def index
    @selling_products = current_user.products
    @bidding_products = current_user.biddings
  end

  def check_biddings
    @biddings = []
    current_user.products.each do |product|
      product.biddings.each do |bidding|
        @biddings << bidding
      end
    end
    @biddings
  end
end