require "rails_helper"

RSpec.describe "merchants index" do
  describe "when I visit the merchants index page, " do
    it "has a list of merchants by name" do
      visit '/merchants'
      expect(page).to have_content("Schroeder-Jerde")
    end

    it "each merchants name is a link to their show page" do
      visit '/merchants'

      click_link("Schroeder-Jerde")

      expect(current_path).to eq("")
    end
  end
end
