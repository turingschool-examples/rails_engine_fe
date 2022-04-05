require 'rails_helper'
RSpec.describe 'items show page', :vcr do
  it 'lists an items attributes' do
    visit '/items/25'
    expect(page).to have_content("Item Non In")
    expect(page).to have_content("Unit Price: 618.98")
    expect(page).to have_content("Error sit qui assumenda. Eius qui nostrum ducimus aut. Expedita et exercitationem deserunt quia aut voluptatem.")
  end
end
