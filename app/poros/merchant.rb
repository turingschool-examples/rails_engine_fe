class Merchant

  attr_reader :name, :id

  def initialize(attributes)
    @id = attributes[:id].to_i
    @name = attributes[:attributes][:name]
  end

end
