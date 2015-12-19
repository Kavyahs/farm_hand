class BiddingsController < ApplicationController
  before_action :authenticate_user, :only => [:new, :create]


  def new
    @bidding = Bidding.new
    @districts = District.all
    @states = State.all
    @product = Product.find(params["product_id"])
  end

  def create
    @bidding = Bidding.new(bidding_params)
    @bidding.user_id = current_user.id
    @bidding.product_id = params['bidding']['product_id']
    if @bidding.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  private

  def bidding_params
    params.require(:bidding).permit(:bidder_name, :price, :price_type, :quantity, :quantity_type, :phone, :email, :address, :district_id, :state_id, :product_id)
  end
end
