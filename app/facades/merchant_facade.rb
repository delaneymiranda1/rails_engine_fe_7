class MerchantFacade

  def merchants
    service = MerchantService.new
    json = service.get_all_merchants
    @merchants = json.map do |merchant|
      Merchant.new(merchant)
    end
  end


end