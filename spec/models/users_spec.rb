require 'rails_helper'

describe User do
  let!(:user) {FactoryGirl.create(:user)}

  context 'positive case' do
    it 'create user with all valid params' do
      user
      expect(user).to be_valid
    end
  end

  context 'negative case' do
    it 'should not create user when name is null' do
      user.name = nil
      expect(user).to be_invalid
    end

    it 'should not create user when email is null' do
      user.email = nil
      expect(user).to be_invalid
    end

    it 'should not create user when password is null' do
      user.password = nil
      expect(user).to be_invalid
    end

    it 'should not create user when password confirmation is null' do
      user.password_confirmation = nil
      expect(user).to be_invalid
    end

    it 'should not create user when phone is null' do
      user.phone = nil
      expect(user).to be_invalid
    end
  end
end
