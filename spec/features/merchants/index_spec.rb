require 'rails_helper'

RSpec.describe "merchants index page" do

  it "exists and returns a valid HTML document" do
    visit "/merchants"
    expect(respose).to be_successful
  end

end
