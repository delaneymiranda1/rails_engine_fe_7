require "rails_helper"

RSpec.describe MerchantFacade do

  describe "merchant facade" do
    it "exists" do
      merchants = MerchantFacade.new

      expect(merchants).to be_a(MerchantFacade)
      expect(merchants).to respond_to(:merchants)
      expect(merchants.merchants).to be_an(Array)
      expect(merchants.merchants.first).to be_a(Merchant)
    end

    it "gets merchants items" do
      merchant_items = MerchantFacade.new.merchant_items(1)

      expect(merchant_items).to be_an(Array)
      expect(merchant_items.first).to be_a(Item)
      expect(merchant_items.count).to eq(15)
    end
  end
end