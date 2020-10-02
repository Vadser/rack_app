# frozen_string_literal: true

require 'yaml'
Dir[File.join(File.dirname(__FILE__), 'app', '**', '*.rb')].sort.each { |file| require file }

class App
  attr_reader :router

  def call(_env)
    result = BaseController.new.call
    [result.status, result.headers, result.content]
  end
end
