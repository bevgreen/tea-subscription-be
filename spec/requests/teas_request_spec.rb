require 'rails_helper'

RSpec.describe 'Api::V1::Teas', type: :request do
  describe 'GET /api/v1/teas' do
    before do
      @tea1 = Tea.create!(title: 'Green Tea', description: 'Refreshing and light', temperature: 80, brew_time: 2)
      @tea2 = Tea.create!(title: 'Black Tea', description: 'Strong and bold', temperature: 95, brew_time: 4)
    end

    it 'returns a list of all teas' do
      get '/api/v1/teas'

      expect(response).to have_http_status(:ok)
      
      body = JSON.parse(response.body, symbolize_names: true)
      expect(body[:data].length).to eq(2)

      titles = body[:data].map { |tea| tea[:attributes][:title] }
      expect(titles).to include('Green Tea', 'Black Tea')
    end
  end
end
