
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
    Trip.all.select do |guest|
        guest.listing==self
    end
#binding pry
    end

    def trips
        self.guests.map do |guest|
            guest
        end

    end

    def trip_count
        trips.count
    end

    def self.find_all_by_city(city)
        self.all.select do |listing|
            listing.city.include?(city) end
    end

    def self.most_popular

        self.all.select do |most_p|
            most_p.mode
        end
    end
end

