#!/usr/bin/env ruby

# Get the argument passed to the script
input = ARGV[0]

# Regular expression to match "School"
pattern = /School/

# Check if the input contains the word "School"
if input.match(pattern)
  puts input
end
