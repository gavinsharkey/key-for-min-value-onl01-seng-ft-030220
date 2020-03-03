# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  if name_hash.empty?
    nil
  else
    keys = name_hash.collect { |key, value| key }
    values = name_hash.collect { |key, value| value }

    current = values[0]

    values.each { |value| value < current ? current = value : nil}

    keys[values.find_index(current)]
  end
end
