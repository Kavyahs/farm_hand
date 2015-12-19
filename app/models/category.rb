class Category < ActiveRecord::Base
  validates :name, presence: true
  # Assosciation
  has_many :sub_categories
end
