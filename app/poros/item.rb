class Item
  attr_reader :name, :description, :unit_price

  def initialize(data)
    @name = data[:attributes][:name]
    @description = data[:attributes][:description]
    @unit_price = data[:attributes][:unit_price]
  end
end
