require 'rails_helper'

RSpec.describe 'the Merchant Index Page' do
  before :each do
    visit merchants_path
  end

  it 'displays all merchant names' do
    
    
    expect(page).to have_content("Name: Tromp Inc")
    expect(page).to have_content("Name: Williamson Group")
  end
end