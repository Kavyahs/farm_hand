require 'rails_helper'

describe District do
  let!(:district) {FactoryGirl.create(:district)}

  it { should belong_to(:state) }
  it { should have_many(:products) }

  context 'positive case' do
    it 'check factory' do
      district
      expect(district).to be_valid
    end
  end

  context 'negative case' do
    it 'check faield factory' do
      district.name = ''
      expect(district).to be_invalid
    end
  end
end
