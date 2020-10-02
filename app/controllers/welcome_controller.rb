# frozen_string_literal: true

require_relative 'base_controller'

class WelcomeController < BaseController
  def index
    self.content = ['Hello World']
  end
end
