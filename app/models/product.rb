class Product < ActiveRecord::Base
  mount_uploader :images

  validates :images, presence: true
  validates :sub_category_id, presence: true
  validates :phone, presence: true
  validates :address, presence: true
  validates :price, presence: true
  validates :quantity, presence: true
  validates :state_id, presence: true
  validates :district_id, presence: true
  validates :close_date, presence: true
  validates :seller_name, presence: true
  validates :email, presence: true

  # Assosciation
  belongs_to :sub_category
  belongs_to :user
  belongs_to :district
  has_many :biddings
end
