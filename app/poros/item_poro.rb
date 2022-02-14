class ItemPoro
  attr_reader :name, :id
  def initialize(data)
    @name = data[:attributes][:name]
    @id = data[:id]
    @merchant_id = data[:attributes][:merchant_id]
  end
end
