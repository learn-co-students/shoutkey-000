describe Link do
  describe "base requirements" do
    it "has a #url method" do
      link = Link.new('http://hostiledeveloper.com')
      expect(link.url).to eq('http://hostiledeveloper.com')
    end
  end

  describe "Mixed in behavior" do
    it "has the Shoutable module mixed in" do
      expect(Link.ancestors).to include(Shoutable)
    end

    it "has a #shoutkey method" do
      # this code should be solved by the module
      # not the class
      link = Link.new('http://hostiledeveloper.com')   
      expect(link).to respond_to(:shoutkey)   
    end

    it "returns a calls shoutkey.com for a new key" do
      # Use nokogiri to fetch shoutkey page for this url
      # parse the page and extract the shoutkey. 
      # Return this as the value of #shoutkey
      link = Link.new('http://hostiledeveloper.com')
      expect(link.shoutkey).to match(/\b\w+\b/)
	  # This default test is soooo ugly, i had to test something intermediate...
	  #expect(link.shoutkey).to eq('http://shoutkey.com/new?url=http%3A%2F%2Fhostiledeveloper.com%2F')
	  #expect(link.shoutkey).to eq('')
    end
  end
end