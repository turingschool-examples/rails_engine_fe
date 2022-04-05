class MerchantObject
  attr_reader :id, :name

  def initialize(data)
    if data.has_key?(:data)
      @id = data[:data][:id]
      @name = data[:data][:attributes][:name]
    else
      @id = data[:id]
      @name = data[:attributes][:name]
    end
  end
end
