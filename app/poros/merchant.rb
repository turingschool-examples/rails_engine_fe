class Merchant
  attr_reader :name, :merchant_id

  def initialize(data)
    @name = data[:attributes][:name]
    @merchant_id = data[:id]
  end
end
