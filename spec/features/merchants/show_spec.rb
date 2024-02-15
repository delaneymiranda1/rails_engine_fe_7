require "rails_helper"

RSpec.describe "Merchant show page", type: :feature do

  describe 'show all merchants items' do
    it 'gets all the merchants items' do
      visit merchant_path(1)

      expect(page).to have_content("Schroeder-Jerde")
      expect(page).to have_content("Items:")
      expect(page).to have_content("Item Nemo Facere")
      expect(page).to have_content("Item Expedita Aliquam")
      expect(page).to have_content("Item Provident At")

    end
  end
end