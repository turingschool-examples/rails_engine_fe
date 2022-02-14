class Item

  attr_reader :name, :id, :merchant_id, :description, :unit_price

  def initialize(data)
    @id = data[:id]
    @name = data[:attributes][:name]
    @merchant_id = data[:attributes][:merchant_id]
    @description = data[:attributes][:description]
    @unit_price = data[:attributes][:unit_price]
  end
end
