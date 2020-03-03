# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  if name_hash.empty?
    nil
  else
    i = 0
    current_key = ''
    current_value = ''

    name_hash.each do |key, value|
      if i == 0
        current_value = value
      else
        if value < current_value
          current_value = value
          current_key = key
        end
      end
    end
    return current_key
  end
end
