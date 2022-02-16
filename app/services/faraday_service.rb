class FaradayService

  def self.conn
    Faraday.new(url: "http://localhost:3000")
  end


end
