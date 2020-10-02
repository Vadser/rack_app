# frozen_string_literal: true

require_relative '../../app/controllers/welcome_controller'

RSpec.describe WelcomeController, type: :controller_test do
  describe 'GET /' do
    it 'returns status code 200 with Hello World' do
      get '/'

      expect(last_response.status).to eq 200
      expect(last_response.body).to eq 'Hello World'
    end
  end
end
