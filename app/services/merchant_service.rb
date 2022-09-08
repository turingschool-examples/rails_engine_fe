class MerchantService
  def self.conn
    Faraday.new(url: "http://localhost:3000")
  end

  def self.get_all_merchants_data
   conn.get("/api/v1/merchants")
  end
end