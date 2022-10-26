class Merchant
  attr_reader :name,
              :id
  
  def initialize(merchant_data)
    @id = merchant_data[:id]
    @name = merchant_data[:attributes][:name]
  end
end