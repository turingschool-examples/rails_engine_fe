class ItemObject
  attr_reader :id, :name, :description, :unit_price, :merchant_id

  def initialize(data)
 # binding.pry
    # if data.has_key?(:data)
    #   @id = data[:data][:id]
    #   @name = data[:data][:attributes][:name]
    #   @description = data[:data][:attributes][:description]
    #   @unit_price = data[:data][:attributes][:unit_price]
    #   @merchant_id = data[:data][:attributes][:merchant_id]
    # else
      @id = data[:id]
      @name = data[:attributes][:name]
      @description = data[:attributes][:description]
      @unit_price = data[:attributes][:unit_price]
      @merchant_id = data[:attributes][:merchant_id]
    # end
  end
end
