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
  end
end