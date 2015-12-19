require 'rails_helper'

describe Category do
  let!(:category) {FactoryGirl.create(:category)}

  it { should have_many(:sub_categories) }

  context 'positive case' do
    it 'check factory' do
      category
      expect(category).to be_valid
    end
  end

  context 'negative case' do
    it 'check faield factory' do
      category.name = ''
      expect(category).to be_invalid
    end
  end
end
