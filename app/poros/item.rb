class ItemPoro
    attr_reader :name, :description, :unit_price

    def initialize(data)
        @name = data[:name]
        @description = data[:description]
        @unit_price = data[:unit_price]
    end 
end