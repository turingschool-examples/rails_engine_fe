class Merchant 

  def initialize(data)
    @id = data[:id]
    @name = data[:attributes][:name]
  end
end