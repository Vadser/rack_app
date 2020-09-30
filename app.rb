# frozen_string_literal: true

require 'yaml'
Dir[File.join(File.dirname(__FILE__), 'lib', '*.rb')].sort.each { |file| require file }
Dir[File.join(File.dirname(__FILE__), 'app', '**', '*.rb')].sort.each { |file| require file }

class App
  ROUTES = YAML.safe_load(File.read(File.join(File.dirname(__FILE__), 'app', 'routes.yml')))

  attr_reader :router

  def initialize
    @router = Router.new(ROUTES)
  end

  def call(env)
    result = router.resolve(env)
    [result.status, result.headers, result.content]
  end
end
