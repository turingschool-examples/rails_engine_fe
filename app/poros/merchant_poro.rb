class MerchantPoro

  attr_reader :type, :id, :name

  def initialize(data)
    @type = data[:type]
    @id = data[:id]
    @name = data[:attributes][:name]
  end

end
