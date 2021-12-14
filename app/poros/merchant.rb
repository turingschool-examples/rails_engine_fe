class Merchant 
  attr_reader :merchant_name,
              :merchant_id

  def initialize(merchant)
    @merchant_name = merchant[:attributes][:name]
    @merchant_id = merchant[:id]
  end 
end 