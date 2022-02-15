require 'rails_helper'
RSpec.describe 'items show page' do
  it 'has item info', :vcr do
    visit 'items/4'
    expect(page).to have_content("Item Nemo Facere")
    expect(page).to have_content("Description: Sunt eum id eius magni consequuntur delectus veritatis. Quisquam laborum illo ut ab. Ducimus in est id voluptas autem.")
    expect(page).to have_content("Unit Price: 42.91")
  end
end
