class Bidding < ActiveRecord::Base

  #validations
  validates :bidder_name,
            :price,
            :price_type,
            :quantity,
            :quantity_type,
            :phone,
            :email,
            :address,
            :presence => true

  #Association
  # belongs_to :user

  # belongs_to :product
  # has_one :state
  # has_one :district
end
