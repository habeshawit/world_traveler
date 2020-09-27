class WorldTraveler::Highlights
    attr_accessor :name, :continent, :link, :info#, :index
    @@all = []
     
    def initialize(name, continent, link)
      @name = name
      @continent = continent
      @link = link
      @info = []
      add_to_continent
      save
    end 
    
    def self.all 
      @@all 
    end
    
    def add_to_continent
      @continent.highlights << self unless @continent.highlights.include?(self)
    end 
    
    def get_highlight_details
      WorldTraveler::Scraper.scrape_info(self) if @info.empty?
    end 
    
    def save
      @@all << self
    end
  end 