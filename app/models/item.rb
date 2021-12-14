class Item
  attr_reader :name, :id, :description, :unit_price

  def initialize(item)
    @name = item[:attributes][:name]
    @id = item[:id]
    @description = item[:attributes][:description]
    @unit_price = item[:attributes][:unit_price]
  end
end
