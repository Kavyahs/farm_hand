require 'rails_helper'

describe State do

  let!(:state) {FactoryGirl.create(:state)}

  it { should have_many(:districts) }

  context 'positive case' do
    it 'check factory' do
      state
      expect(state).to be_valid
    end
  end

  context 'negative case' do
    it 'check faield factory' do
      state.name = ''
      expect(state).to be_invalid
    end
  end

end
