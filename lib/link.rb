class Link
  include Shoutable
  
  attr_reader :url
  def initialize(url)
    @url = url
  end	
end