# frozen_string_literal: true

require_relative '../../app/controllers/base_controller'

RSpec.describe BaseController, type: :controller_test do
  describe 'GET /unknown_url' do
    it 'returns status code 404 with Nothing found' do
      get '/unknown_url'

      expect(last_response.status).to eq 404
      expect(last_response.body).to eq 'Nothing found'
    end
  end
end
