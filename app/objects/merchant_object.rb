# frozen_string_literal: true

class MerchantObject
  attr_reader :id,
              :type,
              :name

  def initialize(merchant)
    @id = merchant[:id].to_i
    @type = merchant[:type]
    @name = merchant.dig(:attributes, :name)
  end
end
