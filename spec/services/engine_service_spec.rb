# frozen_string_literal: true

require 'rails_helper'

RSpec.describe EngineService, :vcr, type: :service do
  describe 'Class Methods' do
    describe '.merchants' do
      it 'returns an index of all Merchants' do
        response = EngineService.merchants

        binding.pry
      end
    end
  end
end
