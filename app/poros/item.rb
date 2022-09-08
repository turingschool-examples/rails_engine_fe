class Item 
  attr_reader :name
  def initialize(data)
    @name = data[:attributes][:name]
  end
end