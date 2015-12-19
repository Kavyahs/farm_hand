require 'rails_helper'

describe ProductsController do

  let!(:user) {FactoryGirl.create(:user)}
  let!(:category) {FactoryGirl.create(:category)}

  context 'GET index' do
    it 'list all products' do
      get :index, :category_id => category.id
      response.should be_success
    end
  end

  context 'GET new' do
    it 'create a new object of product' do
      get :new, :category_id => category.id
      response.should be_success
    end
  end

  context 'POST create' do

    before(:each) do
      session[:user_id] = user.id
      session[:category_id] = category.id
    end

    let(:valid_params) do
      { product: {
          :seller_name => 'prakash',
          :email => 'prakash@yopmail.com',
          :images => File.open(Rails.root.join('spec/fixtures/imgo.jpeg')),
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
      user
      expect { post :create, valid_params}
            .to change { Product.count }.from(0).to(1)
      expect(response).to redirect_to(root_path)
    end
  end
end
