# frozen_string_literal: true

class ItemObject
  attr_reader :id,
              :type,
              :name,
              :description,
              :unit_price

  def initialize(item)
    @id = item[:id].to_i
    @type = item[:type]
    @name = item.dig(:attributes, :name)
    @description = item.dig(:attributes, :description)
    @unit_price = item.dig(:attributes, :unit_price)
  end
end
