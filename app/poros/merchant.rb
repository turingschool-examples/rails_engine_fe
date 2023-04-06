class Merchant
  attr_reader :id, :name, :items

  def initialize(merchant_data)
    @id = merchant_data[:id].to_i
    @name = merchant_data[:attributes][:name]
  end

  def items
    ItemsFacade.get_merchant_items(@id)
  end
end