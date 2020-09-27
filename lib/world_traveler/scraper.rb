class WorldTraveler::Scraper
  
    def self.scrape_continents
      doc = Nokogiri::HTML(open("https://www.lonelyplanet.com/places?page=1&type=Continent"))
      
      continents = doc.css("ul.flex li.w-full") 
      
      continents.each do |c|
         name = c.text
         url = "https://www.lonelyplanet.com" + c.search("a").attribute("href").value
         WorldTraveler::Continents.new(name, url)
      end 
    end 
  
    def self.scrape_highlights(continent)  
        doc = Nokogiri::HTML(open(continent.url))
        
        highlight = doc.css("ol.jsx-742652205 li.jsx-742652205")
        highlight.each do |h|
          title = h.css("/a/span/span[2]/text()").text.strip
          link = "https://www.lonelyplanet.com/" + h.css("a").attribute("href").value
          WorldTraveler::Highlights.new(title, continent, link)
        end 
    end
  

    def self.scrape_info(highlight)
      doc = Nokogiri::HTML(open(highlight.link))     #if highlight has own page
      more = doc.css("div.jsx-2897242284 p")
      more.each {|a| highlight.info << "#{a.text} \n"}

      if highlight.info.empty?     #if highlight on the same page as other highlights
        url = "https://www.lonelyplanet.com" +doc.css("div.jsx-3600140326 p a")[highlight.continent.highlights.index(highlight)].attribute("href").value
        detail = Nokogiri::HTML(open(url))
        more = detail.css("div p")[0...-2]
        more.each{|paragraph| highlight.info << "#{paragraph.text.strip}"}
      end
      
    end  
  
end
  