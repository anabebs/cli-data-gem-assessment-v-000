class DogBreeds::CLI
  
   BASE_PATH = "https://www.dogtime.com"
      
      def intro 
    
        puts "" 
        puts "***********"
        puts "DOG BREEDS"
        puts "**********"
        breeds = make_dogs 
      i 
      
  end
  
      def make_dogs 
        breeds_array = DogBreeds::Scraper.scrape_index(BASE_PATH +"/dog-breeds")
        breeds_array.collect do |breed|
          DogBreeds::Dog.new (breed[:name], breed [:page_url])
        end 
        
    end 
    
    def list_