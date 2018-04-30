# RailsRequestParser
> Parse Rails Request Object

## Install
Add this line to your application's Gemfile:

```ruby
gem 'rails_request_parser'
```
And then execute:
```
$ bundle
```
Or install it yourself as:
```
$ gem install rails_request_parser
```

## Usage
```ruby
request_parser = RailsRequestParser.new(request)
request_parser.is_mac_os? #=> true
request_parser.is_electron_client? #=> true
request_parser.is_windows_os? #=> false
request_parser.is_chrome_browser? #=> true
request_parser.is_firefox_browser? #=> true
request_parser.is_safari_browser? #=> true
```

## License
MIT
