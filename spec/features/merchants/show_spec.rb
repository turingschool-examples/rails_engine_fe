require 'rails_helper'

RSpec.describe 'Merchant show' do
  it 'can show one merchant' do
    visit '/merchants/1'
  end
 end
