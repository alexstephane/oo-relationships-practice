require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
#passanger
alex=Passenger.new("Alex")
chris=Passenger.new("Chris")
boris=Passenger.new("Boris")
sonia=Passenger.new("Sonia")


#driver
charles=Driver.new("Charles")
sam=Driver.new("Sam")
eric=Driver.new("Eric")


#ride

ride_1=Ride.new(alex,charles, 110)
ride_2=Ride.new(alex,charles,15)
ride_3=Ride.new(chris, eric,20)
ride_4=Ride.new(chris, sam,20)

#binding pry

#print alex.total_distance
#print Passenger.premium_members
#print Driver.mileage_cap(20.0)
print Ride.average_distance