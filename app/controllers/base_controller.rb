# frozen_string_literal: true

class BaseController
  attr_reader :name, :action
  attr_accessor :status, :headers, :content

  def initialize(name: nil, action: nil)
    @name = name
    @action = action
  end

  def call
    self.status = 200
    self.headers = { 'Content-Type' => 'text/html' }
    self.content = ['Hello World']
    self
  end
end
