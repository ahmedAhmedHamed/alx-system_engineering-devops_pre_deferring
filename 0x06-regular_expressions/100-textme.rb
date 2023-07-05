#!/usr/bin/env ruby
x = ARGV[0].scan(/((?<=from:)\w+)/).join
y = ARGV[0].scan(/((?<=to:)\+?\w+)/).join
z = ARGV[0].scan(/((?<=flags:)-?\d:-?\d:-?\d:-?\d:-?\d)/).join
puts x + ',' + y + ',' + z

