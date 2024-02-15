require "rails_helper"

RSpec.describe Merchant do
  it "exists" do
    data = {
      id: 1,
      type: "merchant",
      attributes: {
        name: "Miranda"
    }
  }

    merchant = Merchant.new(data)

    expect(merchant).to be_a(Merchant)
    expect(merchant.name).to eq("Miranda")
    expect(merchant.id).to eq(1)
    expect(merchant.type).to eq("merchant")
  end
end