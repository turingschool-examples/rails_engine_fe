require 'rails_helper'

RSpec.describe 'Application Landing Page' do
  it 'search bar to search all merchants by name' do

    visit '/'

    expect(page).to have_css("#merchant_search")
    expect(page).to have_field(:search)
  end
end