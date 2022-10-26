# frozen_string_literal: true

class EngineService
  def self.merchants
    parse(conn.get('/api/v1/merchants'))
  end

  def self.merchant(id)
    parse(conn.get("/api/v1/merchants/#{id}"))
  end

  def self.merchant_items(id)
    parse(conn.get("/api/v1/merchants/#{id}/items"))
  end

  def self.items
    parse(conn.get('/api/v1/items'))
  end

  def self.item(id)
    parse(conn.get("/api/v1/items/#{id}"))
  end

  def self.conn
    conn ||= Faraday.new('http://localhost:3000')
  end

  def self.parse(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end
