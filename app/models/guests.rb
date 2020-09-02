class Guest
@@all=[]
    attr_accessor :name
    def initialize(name)
        @name=name
        @@all<<self
    end

    def self.all 
        @@all
    end

   def listings
    Trip.all.select do |listing|
        listing.guest==self
    end
   end

   def trips
    self.listings.map do |tr|
        tr.trip
    end
   end


   def self.find_all_by_name(name)

    self.all.find_all do |na|
        na.name.include?(name)
   end
   end
end
  

