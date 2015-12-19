require 'rails_helper'

describe SubCategory do
  let!(:sub_category) {FactoryGirl.create(:sub_category)}

  it { should belong_to(:category) }
  it { should have_many(:products) }

  context 'positive case' do
    it 'check factory' do
      sub_category
      expect(sub_category).to be_valid
    end
  end

  context 'negative case' do
    it 'check faield factory' do
      sub_category.name = ''
      expect(sub_category).to be_invalid
    end
  end
end
