class Merchant 
  attr_reader :id, :name#, :items

  def initialize(data)
    @id = data[:id]
    @name = data[:attributes][:name]
    # @items = merchant_items
  end

  # def merchant_items
  #   items_data = MerchantService.merchant_items(id)[:data]

  #   items_data.map do |data|
  #     Item.new(data)
  #   end
  # end
end