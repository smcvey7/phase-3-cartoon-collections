require 'pry'

def roll_call_dwarves(array)# code an argument here
  # Your code here
  array.each.with_index {|dwarf, index| puts "#{index+1}. #{dwarf}"}
end

def summon_captain_planet(array)# code an argument here
  # Your code here
  array.collect do |command|
    "#{command.capitalize}!"
  end
end

def long_planeteer_calls(array)# code an argument here
  # Your code here
  truth = false
  array.each {|call| call.length > 4 ? truth = true : truth = truth}

  truth
end

def find_the_cheese(array)# code an argument here
  # the array below is here to help
  cheese_types = ["cheddar", "gouda", "camembert"]
  
  cheese = false
  final = nil

  array.each do |item|
    # binding.pry
    cheese_types.include?(item) ? cheese = true : cheese = cheese
    final = item if cheese == true
    break if cheese == true
  end
    final
end

puts find_the_cheese(["crackers", "gouda", "thyme"])
