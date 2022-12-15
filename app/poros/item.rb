class Item
  attr_reader :id, :type, :name, :description, :unit_price, :merchant_id

  def initialize(attributes)
    @id = attributes[:id]
    @type = attributes[:type]
    @name = attributes[:attributes][:name]
    @description = attributes[:attributes][:description]
    @unit_price = attributes[:attributes][:unit_price]
    @merchant_id = attributes[:attributes][:merchant_id]
  end
end
