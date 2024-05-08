#!/usr/bin/env ruby
#This script scan for digit only with any other character

puts ARGV[0].scan(/^\d{10}$/).join
