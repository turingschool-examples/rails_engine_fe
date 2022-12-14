class Merchant
  attr_reader :id, :name, :items
  def initialize(data)
    @id = data[:id]
    @name = data[:name]
    @items = data[:items]
  end
end