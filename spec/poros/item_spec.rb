require 'rails_helper'
RSpec.describe "the item poro" do
  it "creates and item object" do
    data = {
    :id=>"4",
    :type=>"item",
    :attributes=>
    {:name=>"Item Nemo Facere",
    :description=>"Sunt eum id eius magni consequuntur delectus veritatis. Quisquam laborum illo ut ab. Ducimus in est id voluptas autem.",
    :unit_price=>42.91,
    :merchant_id=>1}}
    item_1 = Item.new(data)
    expect(item_1.name).to eq("Item Nemo Facere")
    expect(item_1.id).to eq("4")
    expect(item_1.description).to eq("Sunt eum id eius magni consequuntur delectus veritatis. Quisquam laborum illo ut ab. Ducimus in est id voluptas autem.")
    expect(item_1.unit_price).to eq(42.91)
    expect(item_1.merchant_id).to eq(1)
  end
end