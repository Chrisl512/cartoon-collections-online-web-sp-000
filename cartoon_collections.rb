require 'pry'

def roll_call_dwarves(dwarf_array)
  collection = ""
    dwarf_array.each_with_index do |dwarf, index|
    collection += "#{index + 1}. #{dwarf}"
    end
  puts "#{collection.strip}"
end

def summon_captain_planet(planeteer_calls)
  calls = []
    planeteer_calls.collect do |call|
    items = call.capitalize + "!"
    calls << items
    end
  return calls
end

def long_planeteer_calls(array_calls)
  calls = []
    array_calls.any? { |call| call.length > 4 }
end

#def find_the_cheese(array_strings)
#  cheese_types = ["cheddar", "gouda", "camembert"]
  #  array_strings.include?(cheese_types)
  #  match = array_strings & cheese_types
  #    return match
#end

def find_the_cheese(array_strings)
  cheese_types = ["cheddar", "gouda", "camembert"]
  array_strings.each do |cheese|
    if cheese_types.include?(cheese)
      return cheese
    end
    nil
  end
end
