class BiddingsController < ActionController::Base


  def new
    @product = Product.find(params[:product_id])
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
