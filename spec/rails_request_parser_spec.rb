require 'spec_helper'

describe RailsRequestParser do
  it 'has a version number' do
    expect(RailsRequestParser::VERSION).not_to be nil
  end

  describe '.is_chrome_browser?' do
    it 'returns true when user agent is chrome' do
      chrome_user_agent = "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.95 Safari/537.36"
      # Mock the Rails request object
      Request = Struct.new(:user_agent)
      request = Request.new(chrome_user_agent)
      request_parser = RailsRequestParser.new(request)
      expect(request_parser.is_chrome_browser?).to eq(true)
    end
    it 'returns false when user agent is firefox' do
      firefox_user_agent =  "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:43.0) Gecko/20100101 Firefox/43.0"
      # Mock the Rails request object
      Request = Struct.new(:user_agent)
      request = Request.new(firefox_user_agent)
      request_parser = RailsRequestParser.new(request)
      expect(request_parser.is_chrome_browser?).to eq(false)
    end
  end
  describe '.is_mac_os?' do
    it 'returns true when user agent is mac' do
      mac_user_agent = "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.95 Safari/537.36"
      # Mock the Rails request object
      Request = Struct.new(:user_agent)
      request = Request.new(mac_user_agent)
      request_parser = RailsRequestParser.new(request)
      expect(request_parser.is_mac_os?).to eq(true)
    end
  end
  describe '.is_windows_os?' do
    it 'returns true when user agent is windows' do
      windows_user_agent = "Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.2; Trident/6.0)"
      # Mock the Rails request object
      Request = Struct.new(:user_agent)
      request = Request.new(windows_user_agent)
      request_parser = RailsRequestParser.new(request)
      expect(request_parser.is_windows_os?).to eq(true)
    end
  end
end
