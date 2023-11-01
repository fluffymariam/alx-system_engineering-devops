#!/usr/bin/env ruby

# Get the argument passed to the script
input = ARGV[0]

# Regular expression to match strings starting with "h," ending with "n,"
# and having any single character in between
pattern = /^h.n$/

# Check if the input matches the pattern
if input.match(pattern)
  puts input
end
