# frozen_string_literal: true

class EngineService
  def self.merchants
    parse(conn.get('/merchants'))
  end

  def self.conn
    con ||= Faraday.new('http://localhost:3000/api/v1/')
  end

  def self.parse(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end
