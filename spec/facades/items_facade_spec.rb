require 'rails_helper'

RSpec.describe ItemsFacade do
  let(:facade) { ItemsFacade.new }

  it 'starts an EngineService on initialize' do
    expect(facade.service).to be_a EngineService
  end

  describe '#get_item' do
    it 'makes poro for a single item' do
      expect(facade.get_item(20)).to be_a Item
    end
  end
end
