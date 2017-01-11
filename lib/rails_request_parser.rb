require "rails_request_parser/version"
require 'user_agent_parser'

module RailsRequestParser
  def self.is_chrome_browser?(request)
    chrome = 'Chrome'.freeze
    return UserAgentParser.parse(request.user_agent).family == chrome
  end
  # Your code goes here...
end
