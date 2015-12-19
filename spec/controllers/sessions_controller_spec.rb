require 'rails_helper'

describe SessionsController do

  let!(:user) {FactoryGirl.create(:user)}

  context 'POST create' do
    it 'create session for user' do
      post :create, email: user.email, password: user.password
      expect(session[:user_id]).to eq(user.id)
      expect(response).to redirect_to(root_path)
    end

    it 'should not create session with invalid credentials' do
      post :create, email: user.email, password: ''
      expect(session[:user_id]).to eq(nil)
      expect(response).to render_template(:new)
    end
  end

  context 'DELETE destroy' do
    it 'should delete session' do
      session[:user_id] = nil
      delete :destroy, :id => user.id
      expect(response).to redirect_to(root_path)
    end
  end

end
