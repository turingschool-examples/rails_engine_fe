require 'rails_helper'

RSpec.describe 'Items Index Page' do
  it 'lists all items' do
    merchant_1 = Merchant.new({:id=>"7",
                              :attributes=>{:name=>"Schroeder-Jerde"}})

    item_1 = Item.new({:id=>"105",
             :attributes=> {:name=>"Item Laboriosam Vel",
                           :description=>"Vel id molestiae. Eos quam optio laboriosam. Fuga qui quia numquam sint et. Sunt ut nisi rerum totam. Sunt illo sint expedita.",
                           :unit_price=>453.46,
                           :merchant_id=>7}})

    item_2 = Item.new({:id=>"106",
             :attributes=> {:name=>"Item Necessitatibus Voluptatem",
                            :description=>"Inventore ducimus dolorem. Temporibus quis ut omnis similique. Nulla vitae est. Doloremque delectus et ea rem dolore et.",
                            :unit_price=>902.67,
                            :merchant_id=>7}})

    item_3 = Item.new({:id=>"107",
              :attributes=> {:name=>"Item Blanditiis Ad",
                            :description=>"Quibusdam deleniti et. Provident et sequi. Iste reprehenderit sed optio minima.",
                            :unit_price=>845.52,
                            :merchant_id=>7}})

    visit '/items'

    expect(page).to have_link(item_1.name)
    expect(page).to have_link(item_2.name)
    expect(page).to have_link(item_3.name)
    click_link("#{item_1.name}")
    expect(current_path).to eq("/items/#{item_1.id}")
  end
end
