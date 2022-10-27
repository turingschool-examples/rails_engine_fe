class Item 
  attr_reader :name,
              :description

  def initialize(data)
    @name = data[:attributes][:name]
    @description = data[:attributes][:description]
  end
end