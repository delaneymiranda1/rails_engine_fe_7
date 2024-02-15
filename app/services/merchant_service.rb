class MerchantService
  def conn
    Faraday.new(url: "http://localhost:3000")
  end

  def get_url(path)
    response = conn.get(path)
    JSON.parse(response.body, symbolize_names: true)
  end

  def get_all_merchants
    merchants = get_url("/api/v1/merchants")
    merchants[:data]
  end

  def get_merchant_items(merchant_id)
    items = get_url("/api/v1/merchants/#{merchant_id}/items")
    items[:data]
  end
end