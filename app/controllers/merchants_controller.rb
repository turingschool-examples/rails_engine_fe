class MerchantsController <ApplicationController
  def index
    response = ::Faraday.get('http://localhost:3000/api/v1/merchants')
    @merchants = JSON.parse(response.body, symbolize_names: true)[:data] #returning an array of merchant data
  end

  def show
    response = Faraday.get("http://localhost:3000/api/v1/merchants/#{params[:id]}") #refactor to a service
    @merchant = JSON.parse(response.body, symbolize_names: true)
  end
end