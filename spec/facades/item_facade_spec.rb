require 'rails_helper'

RSpec.describe ItemFacade do
 it ".item" do
   VCR.use_cassette('test4') do
     item = ItemFacade.one_item(179)
     expect(item).to be_a Item

     
   end

 end
end
