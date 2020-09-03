class Passenger
attr_accessor :name

@@all=[]
    def initialize(name)
        @name=name
        @@all<<self
    end


    def self.all
        @@all
    end

    def rides 
        Ride.all.select do |ride|
            ride.passenger==self
        end
    end

    def drivers
        self.rides.map do |passanger|
            passanger.driver
        end

    end

    def total_distance
        self.rides.map do |passanger|
        
            passanger.distance
        end.sum
        
    end

    def self.premium_members

    self.all.select do |passanger|
        passanger.total_distance > 100
    end

    



end



end


