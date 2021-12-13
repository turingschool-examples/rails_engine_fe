class Item
  attr_reader :item_id,
              :merchant_id,
              :name,
              :description,
              :unit_price

  def initialize(data)
    @item_id = data[:id].to_i
    @merchant_id = data[:attributes][:merchant_id].to_i
    @name = data[:attributes][:name]
    @description = data[:attributes][:description]
    @unit_price = data[:attributes][:unit_price].to_f
  end
end