class MerchantsController < ApplicationController

  def index
    @merchants = MerchantFacade.new.merchants
  end

  def show
    @merchants = MerchantFacade.new.merchants
    @merchant = @merchants.find { |merch| merch.id == params[:id] }
  end

end