class Item
  attr_reader :id,
              :name,
              :description,
              :unit_price,
              :merchant_id

  def initialize(item_details)
    @id = item_details[:id].to_i
    @name = item_details[:attributes][:name]
    @description = item_details[:attributes][:description]
    @unit_price = item_details[:attributes][:unit_price]
    @merchant_id = item_details[:attributes][:merchant_id]
  end
end
