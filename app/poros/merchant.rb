class Merchant
  attr_reader :id, :name, :type
  
  def initialize(attributes)
    @id = attributes[:id]
    @type = attributes[:type]
    @name = attributes[:attributes][:name]
  end
end