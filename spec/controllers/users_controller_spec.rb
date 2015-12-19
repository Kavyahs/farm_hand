require 'rails_helper'

describe UsersController do

  context 'GET new' do
    it 'create new object of user' do
      get :new
      response.should be_success
    end
  end

  context 'POST create' do
    let(:valid_params) do
      { user: {
          :name => 'prakash',
          :email => 'prakash@yopmail.com',
          :password => '123qwe123',
          :password_confirmation => '123qwe123',
          :phone => '8495844435',
          :password_reset_token => '',
          :password_reset_sent_at => ''
        }
      }
    end

    let(:invalid_params) do
      { user: {
          :name => '',
          :email => 'prakash@yopmail.com',
          :password => '',
          :password_confirmation => '123qwe123',
          :phone => '8495844435',
          :password_reset_token => '',
          :password_reset_sent_at => ''
        }
      }
    end

    it 'should create new user' do
      expect { post :create, valid_params}
            .to change { User.count }.from(0).to(1)
      response.code.should eq("302")
      expect(response).to redirect_to(root_path)
    end

    it 'should not create user with invalid params' do
      post :create, invalid_params
      response.code.should eq("200")
      expect(response).to render_template(:new)
    end
  end

  context 'GET edit' do
  let(:user) {FactoryGirl.create(:user)}

    it 'should find user' do
      get :edit, :id => user.id
      response.should be_success
      response.code.should eq("200")
    end
  end

  context 'PUT update' do
    let(:user) {FactoryGirl.create(:user)}

    # before(:each) do
    #   session[:id] = user.id
    # end

    let(:update_valid_params) do
      { user: {
          :name => 'prakash123',
          :email => 'prakash@yopmail.com',
          :password => '123qwe123',
          :password_confirmation => '123qwe123',
          :phone => '8495844435',
          :password_reset_token => '',
          :password_reset_sent_at => ''
        }
      }
    end

    # it 'should update user with valid params' do
    #   patch :update, :id => user.id, :user => update_valid_params
    #   response.code.should eq("302")
    # end
  end

end
