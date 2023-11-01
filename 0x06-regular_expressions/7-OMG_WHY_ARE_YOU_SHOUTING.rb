#!/usr/bin/env ruby

# Get the argument passed to the script
input = ARGV[0]

# Regular expression to match only capital letters
pattern = /[A-Z]+/

# Find all matches in the input string and join them into a single string
matches = input.scan(pattern).join

# Check if there are any matches and print the result
if !matches.empty?
  puts matches
end
