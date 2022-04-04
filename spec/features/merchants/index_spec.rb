require 'rails_helper'

RSpec.describe 'Movie Index Page' do
  it 'has list of all merchants' do 
    visit merchants_path

    expect(page).to have_css("#merchants")

    within("#merchants") do
      expect(page).to have_css("#name")
    end
  end

  xit 'each merchant name is a link to merchant show page' do 
    visit merchants_path
  end


end