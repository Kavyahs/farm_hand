require 'rails_helper'

describe ProductsController do

  context 'index' do
    it 'list all products' do
      get :index
      response.should be_success
    end
  end

  context 'new' do
    it 'create a new object of product' do
      get :new
      response.should be_success
    end
  end

  context 'create' do
    let(:valid_params) do
      { product: {
          :seller_name => 'prakash',
          :email => 'prakash@yopmail.com',
          :images => 'images',
          :category_id => 1,
          :sub_category_id => 2,
          :phone => '8495844435',
          :address => 'my place',
          :price => 10.0,
          :quantity => 5.0,
          :quantity_type => 'kg',
          :price_type => 'kg',
          :state_id => 5,
          :district_id => 3,
          :close_date => Date.current + 5.days,
          :other_details => ''
        }
      }
    end

    it 'create a product with valid params' do
      expect { post :create, valid_params }
            .to change { Product.count }.from(0).to(1)
    end
  end
end
