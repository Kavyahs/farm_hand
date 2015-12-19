class BiddingsController < ApplicationController


  def new
    @bidding = Bidding.new
    @districts = District.all
    @states = State.all
  end

  def create
    @bidding = Bidding.new(bidding_params)
    @bidding.user_id = current_user.id
    if @bidding.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  private

  def bidding_params
    params.require(:bidding).permit(:bidder_name, :price, :price_type, :quantity, :quantity_type, :phone, :email, :address, :district, :state, :product_id)
  end
end
