class Item 
  attr_reader :name, 
              :description,
              :unit_price, 
              :id

  def initialize(attributes)
    @name = attributes[:attributes][:name]
    @description = attributes[:attributes][:description]
    @unit_price = attributes[:attributes][:unit_price]
    @id = attributes[:id].to_i
  end
end