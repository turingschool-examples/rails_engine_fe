require "rails_helper"

RSpec.describe Merchant, type: :feature do
  it 'lists all merchants as links to their respective show page' do
    merchant1 = Merchant.create!()
  end
end