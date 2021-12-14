class Item 
  attr_reader :item_name,
              :item_id,
              :item_description,
              :item_price

  def initialize(item)
    @item_name = item[:attributes][:name]
    @item_id = item[:id]
    @item_description = item[:attributes][:description]
    @item_price = item[:attributes][:unit_price]
    @item_merchant_id = item[:attributes][:merchant_id]
  end 
end 