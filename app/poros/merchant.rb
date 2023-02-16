class Merchant
  attr_reader :name,
              :id
  def initialize(data)
    @name = data[:attributes][:name]
    # binding.pry
    @id = data[:id]
  end
end