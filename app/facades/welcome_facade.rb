class WelcomeFacade
  def self.find(name)
    json = MerchantService.find_all(name)

    if json != nil
        json.map do |result|
          Merchant.new(result)
        end
    end
  end
end
