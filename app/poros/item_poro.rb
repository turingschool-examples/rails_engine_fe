class ItemPoro
  attr_reader :name, :id, :description, :unit_price
  def initialize(data)
    @name = data[:attributes][:name]
    @id = data[:id]
    @merchant_id = data[:attributes][:merchant_id]
    @unit_price = data[:attributes][:unit_price]
    @description = data[:attributes][:description]
  end
end
