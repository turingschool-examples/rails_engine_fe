require "rails_helper"

RSpec.describe "merchants index" do
  describe "when I visit the merchants index page, " do
    it "has a list of merchants by name" do
      visit '/merchants'
    end

    it "each merchants name is a link to their show page" do
      visit '/merchants'
    end
  end
end
