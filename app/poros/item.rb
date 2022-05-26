class Item
  attr_reader :name, :unit_price, :description

  def initialize(attributes)
    @name = attributes[:attributes][:name]
    @unit_price = attributes[:attributes][:unit_price]
    @description = attributes[:attributes][:description]
  end

end
