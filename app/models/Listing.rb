
require "pry"
class Listing
@@all=[]
    attr_accessor :city
    def initialize(city)
        @city=city
        @@all<<self
    end

    def self.all 
        @@all
    end

#     def add_guest(guest)
#     Trip.new(self, guest)
# end

    def guests
        self.trips.map do|trip|
            trip.guest
        end



    end

    def trips
        
        Trip.all.select do |trip|
            trip.listing==self
        end    

    end

    def trip_count
        trips.count
    end

    def self.find_all_by_city(city)
        self.all.select do |listing|
            listing.city.include?(city)
         end
    end

    def self.most_popular
        self.all.max_by do |most_trip|
            most_trip.trip_count
        end
    end
end

