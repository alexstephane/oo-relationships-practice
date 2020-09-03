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
#alex=Guest.new("Alex")

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
#binding pry
#p nyc.guests
puts "trips alex went on"
#p alex.trips

#p Guest.find_all_by_name("jon")

#p alex.trip_count

#p Guest.pro_traveller
p Listing.most_popular




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