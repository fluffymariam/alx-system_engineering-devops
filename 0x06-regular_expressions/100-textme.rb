#!/usr/bin/env ruby

# Get the log entry as command line argument
log_entry = ARGV[0]

# Regular expression pattern to extract required information
pattern = /\[from:(.*?)\] \[to:(.*?)\] \[flags:(.*?)\]/

# Extract sender, receiver, and flags using the regular expression pattern
matches = log_entry.match(pattern)

# Output the formatted result if there are matches
if matches
  sender = matches[1]
  receiver = matches[2]
  flags = matches[3]
  puts "#{sender},#{receiver},#{flags}"
end
