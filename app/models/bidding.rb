class Bidding < ActiveRecord::Base

  #validations
  validates :bidder_name,
            :price,
            :quantity,
            :phone,
            :email,
            :address,
            :district,
            :state,
            :presence => true

  #Association
  belongs_to :user

  has_one :product

end
