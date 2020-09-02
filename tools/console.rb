require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end



# #### Listing

nyc=Listing.new("New York City")
va=Listing.new("Virginia")
nc=Listing.new("North Carolina")
ca=Listing.new("California")

#puts Listing.all


#### Guest

alex=Guest.new("Alex")
chris=Guest.new("Chris")
boris=Guest.new("Boris")
sonia=Guest.new("Sonia")
alex=Guest.new("Alex")

##add_guest
# nyc.add_guest(alex)
# va.add_guest(alex)

##trips
trip_1=Trip.new(nyc,alex)
trip_2=Trip.new(va,alex)
trip_3=Trip.new(nc,chris)
trip_4=Trip.new(nyc,chris)
trip_5=Trip.new(nyc,sonia)
trip_6=Trip.new(nyc,boris)
#puts nyc.guests
binding pry
p nyc.guests

# #### Guest
# alex = Guest.new("Alex")
#  chris = Guest.new("Chris")
# # peter = Guest.new("Peter")
# # peter_smith = Guest.new("Peter Smith")
#  alex = Guest.new("Alex")
# # robin = Guest.new("Robin")
# # andrew = Guest.new("Andrew")
# ##AD TRIP
# # peter.add_trip(seattle)
# # peter.add_trip(la)
# alex.add_trip(house4)
#  alex.add_trip(house1)
# #  house1.add_guest(robin)
# #  house1.add_guest(andrew)
# #  andrew.add_trip(house1)



# ##trips
# trip1 = Trip.new(house1,alex)
# trip2 = Trip.new(house2,alex)
# trip3= Trip.new(house3,chris)
# trip4= Trip.new(house1,alex)




# #binding.pry

# 0
# # p alex.trips
# # p chris.tripss
# # p peter.trips
# #p house1.guests
# puts house1.trips