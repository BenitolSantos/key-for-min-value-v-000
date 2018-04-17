# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value
require "pry"



def key_for_min_value(name_hash)
  min_key = nil  #key and value are nil is set because it is replaced.
  min_value = nil
  name_hash.each do |key,value| #we want to iterate over every key.
    if min_value == nil || value < min_value
      #since min_value starts as nil, its replaced by the first value.
      #min value is stored and compared to the next value which is value.
      #it doesn't set the min_key to key or min_value to value unless current
      #value is less than the previous minimum value given, min_value.
      min_value = value
      min_key = key
    else
    end
  end
  min_key
end

#min_value = nil  <- min_value = 300
#value is always replaced only if its smaller than the min value


=begin
def key_for_min_value(name_hash)
  value_array = Array.new
  name_hash.each do |key,value|
    value_array << value
  end
  if value_array[0] < value_array[1] && value_array[0] < value_array[2]
    name_hash.key(value_array[0])
  elsif value_array[1] < value_array[2] && value_array[1] < value_array[2]
    name_hash.key(value_array[1])
  elsif value_array[2] < value_arrayvalue[1] && value_array[2] < value_array[0]
    name_hash.key(value_array[2])
  else
    nil
  end
end

=end
