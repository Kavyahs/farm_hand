require 'rails_helper'

describe Product do
  let!(:product) {FactoryGirl.create(:product)}

  it { should belong_to(:sub_category) }
  it { should belong_to(:user) }
  it { should belong_to(:district) }
  it { should have_many(:biddings) }

  context 'positive case' do
    it 'create product with all valid params' do
      product
      expect(product).to be_valid
    end
  end

  context 'negative case' do
    it 'should not create product when image is null' do
      product.images = nil
      expect(product).to be_invalid
    end

    it 'should not create product when email is null' do
      product.email = nil
      expect(product).to be_invalid
    end

    it 'should not create product when seller_name is null' do
      product.seller_name = nil
      expect(product).to be_invalid
    end

    it 'should not create product when phone is null' do
      product.phone = nil
      expect(product).to be_invalid
    end

    it 'should not create product when address is null' do
      product.address = nil
      expect(product).to be_invalid
    end

    it 'should not create product when price is null' do
      product.price = nil
      expect(product).to be_invalid
    end

    it 'should not create product when quantity is null' do
      product.quantity = nil
      expect(product).to be_invalid
    end

    it 'should not create product when state is null' do
      product.state_id = nil
      expect(product).to be_invalid
    end

    it 'should not create product when district is null' do
      product.district_id = nil
      expect(product).to be_invalid
    end

    it 'should not create product when close_date is null' do
      product.close_date = nil
      expect(product).to be_invalid
    end
  end


end
