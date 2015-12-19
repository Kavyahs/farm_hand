class District < ActiveRecord::Base
  validates :name, presence: true
  # Association
  belongs_to :state
  has_many :products
end
