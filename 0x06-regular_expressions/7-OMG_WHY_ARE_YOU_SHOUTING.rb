#!/usr/bin/env ruby
#This script scan for capital letters only.

puts ARGV[0].scan(/[A-Z]/).join
