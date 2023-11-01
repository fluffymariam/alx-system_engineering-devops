#!/usr/bin/env ruby

# Get the argument passed to the script
input = ARGV[0]

# Regular expression to match "hb+n"
pattern = /hb?+?n/

# Check if the input matches the pattern
if input.match(pattern)
  puts input
end
