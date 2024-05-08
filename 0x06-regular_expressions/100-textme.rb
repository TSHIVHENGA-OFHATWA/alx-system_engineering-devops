#!/usr/bin/env ruby
#This script scan for TextMe app text messages transactions.

puts ARGV[0].scan(/\[from:(.*?)\]\[to:(.*?)\]\[flag:(.*?)\]/).join(',')
