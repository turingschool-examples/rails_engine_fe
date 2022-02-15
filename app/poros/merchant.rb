class Merchant

  attr_reader :name,
              :id

  def initialize(data)
    # require "pry"; binding.pry
    @name = data[:attributes][:name]
    @id = data[:id]
  end
end
