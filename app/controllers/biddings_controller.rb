class BiddingsController < ActionController::Base


  def new
    @product = Product.find(params[:product_id])
  end
  
  def create
    @bidding = Bidding.new(bidding_params)
    if @bidding.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  private

  def bidding_params
    params.require(:bidding).permit(:bidder_name, :price, :quantity, :phone, :email, :address, :district, :state, :product_id)
  end
end
