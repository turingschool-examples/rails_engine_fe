class Merchant 
  attr_reader :name 

  def initialize(merchant_data)
    @name = merchant_data[:attributes][:name]
  end
end