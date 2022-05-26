class Merchant
  attr_reader :id, :name

  def initialize(data)
    @name = data[:attributes][:name]
    @id = data[:id]
  end
end
