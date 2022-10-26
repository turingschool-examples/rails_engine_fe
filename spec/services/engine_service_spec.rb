# frozen_string_literal: true

require 'rails_helper'

RSpec.describe EngineService, :vcr, type: :service do
  describe 'Class Methods' do
    describe '.merchants' do
      it 'returns an index of all Merchants' do
        response = EngineService.merchants

        expect(response[:data]).to be_an Array
        response[:data].each do |merchant|
          expect(merchant[:id]).to be_an String
          expect(merchant[:type]).to eq 'merchant'
          expect(merchant[:attributes]).to be_an Hash
          expect(merchant.dig(:attributes, :name)).to be_an String
        end
      end
    end
  end
end
