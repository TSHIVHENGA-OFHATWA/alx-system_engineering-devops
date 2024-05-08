#!/usr/bin/env ruby
#This script scan for

puts ARGV[0].scan(/[from:(.*?) [to:(.*?)] [flag:(.*?)]/).join(",")
