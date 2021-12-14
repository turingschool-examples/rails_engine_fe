class MerchantItem 
  attr_reader :merchant_name,
              :merchant_id,
              :item_name,
              :item_id,
              :item_description,
              :item_price

  def initialize(merchant, item) 
    @merchant_name = merchant[:attributes][:name]
    @merchant_id = merchant[:id]
    @item_name = item[:attributes][:name]
    @item_id = item[:id]
    @item_description = item[:attributes][:description]
    @item_price = item[:attributes][:unit_price]
  end 
end 