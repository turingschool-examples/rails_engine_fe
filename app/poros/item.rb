class Item
  attr_reader :id, :name, :description, :unit_price
  def initialize(data)
    @id = data[:id]
    @name = data[:attributes][:name]
  end
end
