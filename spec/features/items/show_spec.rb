require 'rails_helper' 

RSpec.describe 'item show page' do 
  describe 'when I visit /items/:id' do 
    it 'shows the item name, description, and unit price' do 
      visit item_path(20)

      expect(page.status_code).to eq 200 
      expect(page).to have_content("Item Dolorem Et")
      expect(page).to have_content("Item Description: Atque voluptatibus molestiae porro. Possimus facere quam dolor voluptate officia soluta. Ipsam dolores tempore ut.")
      expect(page).to have_content("Price: $693.38")
    end
  end
end