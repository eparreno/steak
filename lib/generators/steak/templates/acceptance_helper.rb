require File.dirname(__FILE__) + "/../spec_helper"
require "steak"
<%- if driver == 'webrat' %>
require "webrat"

Webrat.configure do |config|
  config.mode = :rack
end
<%- else -%>
require 'capybara/rails'

include Capybara
<%- end -%>

# Put your acceptance spec helpers inside /spec/acceptance/support
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each {|f| require f}
