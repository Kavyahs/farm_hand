class SubCategory < ActiveRecord::Base
  validates :name, presence: true
  # Association
  belongs_to :category
  has_many :products
end
