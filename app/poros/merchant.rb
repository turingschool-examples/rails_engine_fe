class Merchant

  attr_reader :name

  def initialize(merchant_data)
    #require "pry"; binding.pry
    @name = merchant_data[:attributes][:name]
  end
end
