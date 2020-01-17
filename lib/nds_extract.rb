$LOAD_PATH.unshift(File.dirname(__FILE__))
require_relative './directors_database'


def directors_totals(source)
  result = {}
  director_index = 0
  while director_index < source.size do
    director = source[director_index]
    result[director[:name]] = gross_for_director(director)
    director_index += 1
  end
  result
end

def gross_for_director(d)
  total = 0
  index = 0

  while index < d[:movies].length do
    total += d[:movies][index][:worldwide_gross]
    index += 1
  end

  total
end

def list_of_directors(source)
  # Write this implementation
  
  director_array = []
  
  list_of_directors_index = 0
  
  while list_of_directors_index < source.length do
  director_array.push(source[list_of_directors_index][:name])
  list_of_directors_index += 1
  end

  puts director_array
end


def total_gross(source)
  # Write this implementation
  #
  # Should use methods:
  # 1. directors_totals: returns a Hash of { dir_name => gross }
  # 2. list_of_directors: names provides an Array of directors names (use
  #
  # Visit each key (i.e. director name), look up the value in the hash
  # returned by directors_totals, and add it to a running total. When done,
  # return the total
 
  grand_total_gross = 0
  final_directors_array = list_of_directors(source)
  final_director_total = directors_totals(source)
  
   final_loop_index = 0
   
   while final_loop_index < final_directors_array.length do
   grand_total_gross += final_director_total(final_directors_array[final_loop_index])[final_directors_array[final_
  
   final_loop_index += 1
   
   end
  puts grand_total_gross
end


