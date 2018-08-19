class DogBreeds::Dogs 
      attr_accessor :name, :page_url, :breed_characteristics, :vital_stats 
      
      @@all = []
      
      def initialize(name, page_url)
          @name = name 
          @page_url = page_url
          @@all << self 
        end 
        
      def add_details(details)
        details.each do |k,v|
            self.send("#{k}=",v)    
          end 
          
      end 
      
      
      def self.all 
        @@all 
      end 
    
  end 