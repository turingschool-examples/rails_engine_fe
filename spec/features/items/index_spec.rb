RSpec.describe "Items Index Page" do
  describe "As a visitor" do
    before :each do

      @items_list = File.read('./spec/fixtures/items.json')
      @items_json = JSON.parse(@items_list, symbolize_names: true)
    end

    it 'I see a list of all items by name' do

      visit items_path

      expect(page).to have_content("Items:")
      @items_json.each do |item|

        within('#items-list') do
          expect(page).to have_content(item[:attributes][:name])

        end
      end
    end

    it 'When I click the items name I am taken to their show page' do

      visit items_path

      click_on "Item Nemo Facere"

      expect(current_path).to eq('/items/4')
    
      expect(page).to have_content("Item Nemo Facere")
      expect(page).to have_content(42.91)
    end
  end
end
