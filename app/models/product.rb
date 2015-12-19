class Product < ActiveRecord::Base

  validates :images, presence: true
  validates :category, presence: true
  validates :phone, presence: true
  validates :address, presence: true
  validates :price, presence: true
  validates :quantity, presence: true
  validates :state, presence: true
  validates :district, presence: true
  validates :close_date, presence: true
  validates :seller_name, presence: true
  validates :email, presence: true
end
