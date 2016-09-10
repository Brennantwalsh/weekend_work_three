# In this exercise, we've already implemented the class, and you have to write the 
# driver code. 
# This class represents a hotel reservation.

class HotelReservation
  attr_accessor :customer_name, :date, :room_number, :amenities

  def initialize(reservation_info)
    @customer_name = reservation_info[:customer_name]
    @date = reservation_info[:date]
    @room_number = reservation_info[:room_number]
    @amenities = []
  end

  def add_a_fridge
    @amenities << "fridge"
  end

  def add_a_crib
    @amenities << "crib"
  end

  def add_a_custom_amenity(amenity)
    @amenities << amenity
  end
end


# Write your own driver code below! Make sure your code tests the following:
# The ability to change a room number even after a reservation has already been created
# The add_a_fridge method
# The add_a_crib method
# The add_a_custom_amenity method

hotel = HotelReservation.new(customer_name: "John", date: "6/10/2106", room_number: 210, amenities: ["shower", "bed", "tv"])

p hotel
hotel.room_number = 211
if hotel.room_number == 211
  puts "Pass"
else
  puts "F"
end

hotel.add_a_fridge
if hotel.amenities.include?("fridge")
  puts "Pass"
else
  puts "F"
end

hotel.add_a_crib
if hotel.amenities.include?("crib")
  puts "Pass"
else
  puts "F"
end

hotel.add_a_custom_amenity("lava lamp")
if hotel.amenities.include?("lava lamp")
  puts "Pass"
else
  puts "F"
end

p hotel


