require 'rails_helper'

describe Product do
  let(:product) { {
    :seller_name => 'prakash',
    :email => 'prakash@yopmail.com',
    :images => 'image',
    :category => 'paddi',
    :sub_category => 'jaya',
    :phone => '8495844435',
    :address => 'my place',
    :price => 10.0,
    :quantity => 5.0,
    :state => 'karnataka',
    :district => 'mysore',
    :close_date => Date.current + 5.days,
  }

  }

  context 'positive case' do
  end


end
