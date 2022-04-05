require 'rails_helper'

RSpec.describe Merchant do
  # shouldamatchers broken fix
  # describe 'validations' do
  #     it { should validate_presence_of(:name) }
  #     it { should validate_presence_of(:id) }
  # end
  it 'exists' do
    data ={id:1, attributes:{name: "the store"}}
    merchant = Merchant.new(data)
  end
end
