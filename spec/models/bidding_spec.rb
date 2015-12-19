require 'rails_helper'

describe Product do
  let(:bidding){FactoryGirl.create(:bidding)}

  it { should belong_to(:product) }
  it { should belong_to(:user) }
  it { should belong_to(:district) }

  context 'positive case' do
    it 'validate bidding with all valid params' do
      expect(bidding).to be_valid
    end
  end

  context 'negative case' do
    it "validate bidding when bidder name is nil" do
      bidding.bidder_name = nil
      expect(bidding).to be_invalid
    end

    it "validate bidding when bidder email is nil" do
      bidding.email = nil
      expect(bidding).to be_invalid
    end

    it "validate bidding when quantity is nil" do
      bidding.quantity = nil
      expect(bidding).to be_invalid
    end

    it "validate bidding when price is nil" do
      bidding.price = nil
      expect(bidding).to be_invalid
    end

    it "validate bidding when phone is nil" do
      bidding.phone = nil
      expect(bidding).to be_invalid
    end

    it "validate bidding when phone is nil" do
      bidding.phone = nil
      expect(bidding).to be_invalid
    end

  end
end
