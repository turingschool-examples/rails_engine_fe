# frozen_string_literal: true

class Merchant
  attr_reader :name,
              :id

  def initialize(data)
    @id = data[:id].to_i
    @name = data[:attributes][:name]
  end
end
