require 'rails_helper'

RSpec.describe "Merchant Index Page" do
  it 'lists all of the items' do
    merchant_1 = Merchant.new({:id=>"1",
                                :attributes=>{:name=>"Schroeder-Jerde"}})

    merchant_2 = Merchant.new({:id=>"2",
                               :attributes=>{:name=>"Klein, Rempel and Jones"}})

    merchant_3 = Merchant.new({:id=>"3",
                               :attributes=>{:name=>"Willms and Sons"}})

    visit '/merchants'

    expect(page).to have_link(merchant_1.name)
    expect(page).to have_link(merchant_2.name)
    expect(page).to have_link(merchant_3.name)
    click_link("#{merchant_1.name}")
    expect(current_path).to eq("/merchants/#{merchant_1.id}")
  end
end
