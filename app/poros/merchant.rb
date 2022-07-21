class Merchant

  attr_reader :name,
              :id


  def initialize(data)
    @data = data
    @name = data[:attributes][:name]
    @id = data[:id]
  end
end
