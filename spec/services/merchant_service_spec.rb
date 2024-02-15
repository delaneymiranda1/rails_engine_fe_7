require "rails_helper"

RSpec.describe MerchantService do

  describe "get_all_merchants" do
    it "returns all merchants" do
      merchants = MerchantService.new.get_all_merchants

      expect(merchants).to be_an Array

      expect(merchants.first[:attributes][:name]).to be_a String
    end
  end
end