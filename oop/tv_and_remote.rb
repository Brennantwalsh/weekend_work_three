# In this exercise, you will be creating two classes AND the driver code to test them.
# You will create a Tv class and a Remote class. 

# The Tv class will have the attributes: power, volume, and channel. 

# The Remote class will have just one attribute: tv. This will represent which tv it
# actually controls.
# The Remote will have the following instance methods: 
# toggle_power (this will turn off the tv if it's on, or turn it on if it's off)
# increment_volume (this will increase the tv's volume by 1)
# decrement_volume (this will decrease the tv's volume by 1)
# set_channel (this will change the tv's channel to whatever integer is passed to this method)

class Tv
  attr_accessor :power, :volume, :channel

  def initialize(power, volume, channel)
    @power = power
    @volume = volume
    @channel = channel
  end
end

class Remote
  attr_accessor :tv

  def initialize(tv)
    @tv = tv
  end

  def toggle_power
    tv.power = !tv.power
    if tv.power == true
      "on"
    else
      "off"
    end
  end

  def increment_volume
    tv.volume += 1
  end

  def decrement_volume
    tv.volume -= 1
  end

  def set_channel(number)
    tv.channel = number
  end
end

tv = Tv.new(true, 189, 85)
p tv.power
remote = Remote.new(tv)

if remote.toggle_power == "off"
  puts "Pass!"
else 
  "F"
end

if remote.increment_volume == 190
  puts "Pass!"
else 
  "F"
end

if remote.decrement_volume == 189
  puts "Pass!"
else 
  "F"
end

if remote.set_channel(55) == 55
  puts "Pass!"
else
  "F"
end

p remote

