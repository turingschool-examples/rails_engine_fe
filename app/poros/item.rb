class Item

  attr_reader :name, :id, :merchant_id, :description, :price

  def initialize(item_data)
    @id = item_data[:id].to_i
    @name = item_data[:attributes][:name]
    @description = item_data[:attributes][:description]
    @price = item_data[:attributes][:unit_price]
    @merchant_id = item_data[:attributes][:merchant_id]
  end
end