require 'rails_helper'

RSpec.describe 'The merchant index page' do
  it 'displays a list of merchants by name' do
    visit '/merchants'

    expect(page).to have_link("Schroeder-Jerde")
    expect(page).to have_link("Klein, Rempel and Jones")
    expect(page).to have_link("Willms and Sons")
  end
end
