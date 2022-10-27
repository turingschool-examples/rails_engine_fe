class Merchant
  attr_reader :name, :id, :items
  
  def initialize(data, items = [])
    @name = data[:attributes][:name]
    @id = data[:id]
    @items = items
  end
end