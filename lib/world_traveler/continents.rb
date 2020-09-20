class WorldTraveler::Continents
    attr_accessor :name, :url, :highlights
    
    @@all = []
     
    def initialize(name, url)
      @name = name
      @url = url
      @highlights = []
      @@all << self
    end 
   
    def self.all
        WorldTraveler::Scraper.scrape_continents if @@all.empty?
        @@all
    end
    
    def get_highlights
        WorldTraveler::Scraper.scrape_highlights(self) if @highlights.empty?
    end
    
  end 