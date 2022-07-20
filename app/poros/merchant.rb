class Merchant 
    attr_reader :name 

    def initialize(data)
        @name = data[:attributes][:name]
        @id = data[:id]
    end
end