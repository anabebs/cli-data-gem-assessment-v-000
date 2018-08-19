class DogBreeds::Scraper

    def self.scrape_index(url)
          dog_breeds  = []
          doc = Nokogiri::HTML(open(url))
          breeds = doc.css("         ")#"#hub-breed-list-container ul li a"
          
          breeds.each do |b|
            breed = {} 
            breed[:name] = b.text 
            breed[:page_url] b.attr("href")
            dog_breeds << breed 
          
        end
            dog_breeds 
      end 
      
      
      def self.scrape_profile(url)
        breed ={} 
        doc = Nokogiri::HTML(open(url))
        breed[:breed_characteristics]= doc.css #find out
        breed[:vital_stats] = doc.css #find out
        breed
      
    end 
        
        
      def self.scrape_characteristics(url)
         characteristics={} 
        doc = Nokogiri::HTML(open(url))
        
        #not sure what this does 
     
    # title = project.css("h2.bbcard_name strong a"#).text
    #projects[title.to_sym] = {
    #  :image_link => project.css("div.project#-thumbnail a img").attribute("src").value,
    #  :description => project.css("p.bbcard_blurb"#).text,
    #  :location => project.css("ul.project-meta #span.location-name").text,
    