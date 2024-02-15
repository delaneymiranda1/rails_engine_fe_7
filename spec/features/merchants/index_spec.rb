require "rails_helper"

RSpec.describe "Merchant index page", type: :feature do

  it "gets all merchants" do
    visit merchants_path

    expect(page).to have_content("Merchants")
    expect(page).to have_content("Schroeder-Jerde")
  end

  it "lists each merchant as a link to their show" do
    visit merchants_path

    expect(page).to have_content("Merchants")
    expect(page).to have_link("Schroeder-Jerde")

    click_link "Schroeder-Jerde"
    save_and_open_page
    expect(current_path).to eq("/merchants/1")
    expect(page).to have_content("Schroeder-Jerde")
  end
end