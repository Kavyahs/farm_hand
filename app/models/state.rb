class State < ActiveRecord::Base
  validates :name, presence: true
  #Association
  has_many :districts
end
