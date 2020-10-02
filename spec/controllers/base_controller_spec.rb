# frozen_string_literal: true

RSpec.describe BaseController, type: :controller_test do
  describe 'GET /' do
    it 'returns status code 404 with Nothing found' do
      get '/'

      expect(last_response.status).to eq 200
      expect(last_response.body).to eq 'Hello World'
    end
  end
end
