#!/usr/bin/env ruby
#Thsi script scan for pattern that start with h and end with n

puts ARGV[0].scan(/^h.n$/).join
