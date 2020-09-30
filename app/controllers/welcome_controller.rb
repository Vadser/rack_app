# frozen_string_literal: true

class WelcomeController < BaseController
  def index
    self.content = ['Hello World']
  end
end
