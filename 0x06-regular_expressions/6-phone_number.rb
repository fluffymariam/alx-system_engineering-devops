#!/usr/bin/env ruby

# Get the argument passed to the script
input = ARGV[0]

# Regular expression to match a 10-digit phone number
pattern = /^[0-9]{10}$/

# Check if the input matches the pattern
if input.match(pattern)
  puts input
end
