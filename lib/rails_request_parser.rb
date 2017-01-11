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
  def is_mac_os?
    mac = 'Mac'.freeze
    UserAgentParser.parse(@request.user_agent).os.to_s.include? mac
  end
  def is_windows_os?
    windows = 'Windows'.freeze
    UserAgentParser.parse(@request.user_agent).os.to_s.include? windows
  end
end

# firefox_user_agent =  "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:43.0) Gecko/20100101 Firefox/43.0"
# chrome_user_agent = "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.95 Safari/537.36"
#
# Request = Struct.new(:user_agent)
# request = Request.new(chrome_user_agent)
# puts request
# request_parser = RailsRequestParser.new(request)
# puts request_parser.is_chrome_browser?
