require 'rails_helper'

RSpec.describe 'The Merchant Show page' do
  it 'displays the name of the merchant' do
    stub_merchant_show
    stub_merchant_items

    visit '/merchants/1'

    expect(page).to have_content 'Merchant 1'
    expect(page).to have_content 'Name: Schroeder-Jerde'
  end

  it 'displays all items related to the merchant' do
    stub_merchant_show
    stub_merchant_items

    visit '/merchants/1'

    expect(page).to have_css('.item', count: 12)

    within '#item-4' do
      expect(page).to have_content 'Item Nemo Facere'
      expect(page).to have_content 'Description: Sunt eum id eius magni consequuntur delectus veritatis. Quisquam laborum illo ut ab. Ducimus in est id voluptas autem.'
      expect(page).to have_content 'Unit Price: 42.91'
    end

    within '#item-5' do 
      expect(page).to have_content 'Item Expedita Aliqua'
      expect(page).to have_content 'Description: Voluptate aut labore qui illum tempore eius. Corrupti cum et rerum. Enim illum labore voluptatem dicta consequatur. Consequatur sunt consequuntur ut officiis.' 
      expect(page).to have_content 'Unit Price: 687.23'
    end

    within '#item-6' do
      expect(page).to have_content 'Item Provident At'
      expect(page).to have_content 'Description: Numquam officiis reprehenderit eum ratione neque tenetur. Officia aut repudiandae eum at ipsum doloribus. Iure minus itaque similique. Ratione dicta alias asperiores minima ducimus nesciunt at.'
      expect(page).to have_content 'Unit Price: 159.25'
    end
  end
end
