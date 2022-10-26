class Item

  attr_reader :name, :id, :merchant_id

  def initialize(item_data)
    @id = item_data[:id].to_i
    @name = item_data[:attributes][:name]
    @merchant_id = item_data[:attributes][:merchant_id]
  end
end