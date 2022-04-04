class MerchantPoro
  attr_reader :id, :name

  def initialize(data)
    @id = data[:id]
    #binding.pry
    @name = data[:name]
  end
end
