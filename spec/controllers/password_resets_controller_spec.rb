require 'rails_helper'

describe PasswordResetsController do
  let!(:user) {FactoryGirl.create(:user)}

  context 'POST create' do
    it 'should reset password create' do
      # session[:password] = '123qwe1234'
      # session[:password_confirmation] = '123qwe1234'
      # post :create, :email => user.email
      # response.code.should eq('302')
      # expect(response).to redirect_to(root_path)
    end
  end
end
