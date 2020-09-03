class Driver
    attr_accessor :name
    
    @@all=[]
        def initialize(name)
            @name=name
            @@all<<self
        end
    
    
        def self.all
            @@all
        end


        def ride
            Ride.all.select do |ride|
                ride.driver==self
            end

        end

        def passengers
            self.ride.map do |pas|
                pas.passenger
            end

        end

        

        # def self.mileage_cap(distance)
        #     self.all.select do |distance1|
        #         distance1.distance
        #     end

        # end

    end