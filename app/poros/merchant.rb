class Merchant
  attr_reader :name,
              :id
  def initialize(data)
    @name = data[:name]
    @id = data[:id].to_i
  end
end
