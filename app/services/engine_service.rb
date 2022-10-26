# frozen_string_literal: true

class EngineService
  def self.merchants
    parse(conn.get('/api/v1/merchants'))
  end

  def self.conn
    con ||= Faraday.new('http://localhost:3000')
  end

  def self.parse(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end
