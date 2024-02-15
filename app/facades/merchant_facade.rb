class MerchantFacade

  def merchants
    service = MerchantService.new
    json = service.get_all_merchants
    @merchants = json.map do |merchant|
      Merchant.new(merchant)
    end
  end

  def merchant_items(merchant_id)
    service = MerchantService.new
    call = service.get_merchant_items(merchant_id)
    @merchant_items = call.map do |merchant_item|
      Item.new(merchant_item)
    end
  end
end