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
          link = "https://www.lonelyplanet.com/" + h.search("a").attribute("href").value
          WorldTraveler::Highlights.new(title, continent, link)
        end 
    end
  
  
    def self.scrape_info(highlight)
      doc = Nokogiri::HTML(open(highlight.link))
  
      more_detail1 = doc.css("div.jsx-3600140326 p/text()[1]")["#{highlight.index}".to_i]
      more_detail2 = doc.css("div.jsx-3600140326 p/text()[2]")["#{highlight.index}".to_i]
      if  more_detail1 != nil
        highlight.info << "#{more_detail1.text.strip} #{highlight.name} #{more_detail2.text.strip}"
      else
        more = doc.css("div.jsx-2897242284 p")
        more.each {|a| highlight.info << "#{a.text} \n\n"}
      end
    end 
  
end
  