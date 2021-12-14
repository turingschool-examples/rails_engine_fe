class Item
  attr_reader :name, :description, :unit_price, :id

  def initialize(data)
    @id = data[:id]
    @name = data[:attributes][:name]
    @description = data[:attributes][:description]
    @unit_price = data[:attributes][:unit_price]
  end
end
