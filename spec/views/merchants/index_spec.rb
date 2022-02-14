require 'rails_helper'

RSpec.describe 'the merchants index page' do

  before :each do
    @merchants = MerchantFacade.all_merchants
    # @merchant = create(:merchant)
    # @names = ["Schroeder-Jerde", "Klein, Rempel and Jones", "Willms and Sons", "Cummings-Thiel", "Williamson Group", "Williamson Group", "Bernhard-Johns", "Osinski, Pollich and Koelpin", "Hand-Spencer", "Bechtelar, Jones and Stokes", "Pollich and Sons", "Kozey Group", "Tillman Group", "Dicki-Bednar", "Adams-Kovacek", "Bosco, Howe and Davis", "Ullrich-Moen", "Koepp LLC", "Brown Inc", "Schulist, Wilkinson and Leannon", "Leffler, Rice and Leuschke", "Thiel Inc", "Kilback Inc", "Ferry and Sons", "Hickle-Hessel", "Balistreri, Schaefer and Kshlerin", "Shields, Hirthe and Smith", "Schiller, Barrows and Parker", "Tromp Inc", "Ernser, Borer and Marks", "Maggio LLC", "Rowe and Sons", "Quitzon and Sons", "Rutherford, Bogan and Leannon", "Schuster Group", "Bernhard, Stanton and Funk", "Dibbert Group", "Johnston, Gleason and O'Keefe", "Schuppe, Friesen and Schmeler", "Wilderman Group", "Crona LLC", "Marks, Shanahan and Bauch", "Gibson Group", "Dickinson-Klein", "Huels, Homenick and Smith", "Franecki-Ullrich", "Hand, Boyer and Mitchell", "Marvin, Renner and Bauch", "Nader-Hyatt", "Paucek Inc", "Reynolds Inc", "Rath, Gleason and Spencer", "Zemlak-Collins", "Koch, Wolf and Jerde", "Sporer, Christiansen and Connelly", "Parisian Group", "Rogahn LLC", "Pollich, Romaguera and Bayer", "Smitham LLC", "Auer, Crooks and Shanahan", "Kunze, Kautzer and Little", "Lehner, Padberg and O'Hara", "Koepp, Waelchi and Donnelly", "Hermann, Weimann and Botsford", "Bechtelar LLC", "Torp and Sons", "Heaney Group", "Watsica-Parisian", "Weimann-Schimmel", "Schulist Group", "Greenfelder-Keebler", "Sipes LLC", "Daugherty Group", "Eichmann-Turcotte", "Kirlin, Jakubowski and Smitham", "Kutch, Blick and O'Keefe", "Heathcote-Hettinger", "Pacocha-Mayer", "Jakubowski, Predovic and Hudson", "Jewess Group", "Kulas LLC", "Gulgowski, Torphy and Lynch", "Terry-Moore", "Sauer and Sons", "Marvin Group", "Johnson-Wiza", "Kiehn Group", "Kassulke, O'Hara and Quitzon", "Friesen, Hackett and Runte", "Weissnat, Hermiston and Beer", "Zemlak, Volkman and Haley", "Walter-Schowalter", "Boehm LLC", "Johnson-Dickinson", "Swaniawski-Cremin", "Rice, Jerde and White", "Okuneva, Prohaska and Rolfson", "Wisozk, Hoeger and Bosco", "Fahey-Stiedemann", "Glover Inc"]
  end

  it 'displays all merchants' do
    visit '/merchants'

    @merchants.each do |m|
      expect(page).to have_content(m.name)
    end
  end

  it 'links to merchant show page' do
    visit '/merchants'
    click_link "#{@merchants.first.name}"

    expect(current_path).to eq("/merchants/#{@merchants.first.id}")
  end
end
