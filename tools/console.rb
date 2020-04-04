require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

leaves = Startup.new("Leaves", "Brandon", "leaves.com")
greenfog = Startup.new("Green Fog", "Ashley", "greenfog.com")
bendystraws = Startup.new("Bendy Straws", "Geoffrey", "bendystraws.com")
eightmiles = Startup.new("Eight Miles", "Maddie", "eightmiles.com")

elon = VentureCapitalist.new("Elon Musk", 75000000)
bill = VentureCapitalist.new("Bill Gates", 85000000000)
jeff  = VentureCapitalist.new("Jeff Besos", 120000000000)

f1 = FundingRound.new(leaves, elon, "Series A", 120000)
f2 = FundingRound.new(greenfog, bill, "Series B", 160000)
f3 = FundingRound.new(bendystraws, jeff, "Series C", 200000)
f4 = FundingRound.new(eightmiles, elon, "Series D", 100000)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line