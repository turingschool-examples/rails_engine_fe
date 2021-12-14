require 'rails_helper'

RSpec.describe 'Merchants Index spec' do
  before do
    visit merchants_path
  end

  it 'when i visit /merchants', :vcr do
    expect(current_path).to eq(merchants_path)
  end
end
