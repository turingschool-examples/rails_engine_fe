require 'rails_helper'

RSpec.describe ItemFacade do
 it ".item_info", :vcr do
   item = ItemFacade.item_info(4)
   
   expect(item).to be_a(ItemPoro)
  end
end
