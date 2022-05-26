module MerchantsStubHelper
  def stub_merchant_index
    merchant_index_response = File.read('spec/fixtures/merchant_index_stub.json')

    stub_request(:get, "http://localhost:3000/api/v1/merchants")
      .with(
        headers: {
          'Accept'=>'*/*',
          'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
          'User-Agent'=>'Faraday v2.3.0'
        }
      )
        .to_return(status: 200, body: merchant_index_response, headers: {})
  end

  def stub_merchant_show
    merchant_show_response = File.read('spec/fixtures/merchant_show_stub.json')

    stub_request(:get, "http://localhost:3000/api/v1/merchants/1")
      .with(
        headers: {
          'Accept'=>'*/*',
          'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
          'User-Agent'=>'Faraday v2.3.0'
        })
          .to_return(status: 200, body: merchant_show_response, headers: {})
  end

  def stub_merchant_items
    merchant_items_response = File.read('spec/fixtures/merchant_items_stub.json')

    stub_request(:get, "http://localhost:3000/api/v1/merchants/1/items")
      .with(
        headers: {
          'Accept'=>'*/*',
          'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
          'User-Agent'=>'Faraday v2.3.0'
        })
          .to_return(status: 200, body: merchant_items_response, headers: {})
  end
end
