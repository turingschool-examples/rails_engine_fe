require 'rails_helper'

RSpec.describe 'merchant index page', :vcr  do
  it 'displays all merchants by name' do

    visit merchants_path

    expect(page).to have_content("Merchants")

    within("#merchants_index_id_1") do
      expect(page).to have_content("Name: Schroeder-Jerde")
    end

    within("#merchants_index_id_2") do
      expect(page).to have_content("Name: Klein, Rempel and Jones")
    end
    save_and_open_page
  end
end

#   xit 'links to each merchants show page via their name' do
#
#     visit merchants_path
#
#     within("merchants_index_id_1") do
#       expect(page)to have_link("Shroeder-Jerde")
#       click_on "Shroeder-Jerde"
#       expect(current_path).to eq('/merchants/:1')
#     end
#
#     within("#merchants_index_id_2") do
#       expect(page)to have_link("Klein, Rempel and Jones")
#       click_on "Klein, Rempel and Jones"
#       expect(current_path).to eq('/merchants/:2')
#     end
#   end
# end
