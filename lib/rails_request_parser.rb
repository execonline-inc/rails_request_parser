# require "rails_request_parser/version"
require 'user_agent_parser'

class RailsRequestParser
  def initialize(request)
    @request = request
  end
  def is_chrome_browser?
    chrome = 'Chrome'.freeze
    return UserAgentParser.parse(@request.user_agent).family == chrome
  end
  def is_electron_client?
    electron = 'Electron'.freeze
    return @request.user_agent.include? electron
  end
  def is_mac_os?
    mac = 'Mac'.freeze
    UserAgentParser.parse(@request.user_agent).os.to_s.include? mac
  end
  def is_windows_os?
    windows = 'Windows'.freeze
    UserAgentParser.parse(@request.user_agent).os.to_s.include? windows
  end
end
