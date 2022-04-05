class AMerchant
  attr_reader :name

  def initialize(attributes)
    binding.pry
    @name = attributes[:name]
    binding.pry
  end
end
