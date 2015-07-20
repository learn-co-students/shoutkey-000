require 'open-uri'
require 'nokogiri'

module Shoutable
  def shoutkey
    match = /^(https?)\:\/\/(.+)$/.match(self.url)
    url = "http://shoutkey.com/new?url=#{match[1]}%3A%2F%2F#{match[2]}%2F"
	doc = Nokogiri::HTML(open(url))
	doc.css("div.hero-unit h1 a").text
  end
end