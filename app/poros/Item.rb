class Item
  attr_reader :id, :name, :description
  def initialize(data)
    @id = data[:id]
    @name = data[:attributes][:name]
    @description = data[:attributes][:description]
  end
end
