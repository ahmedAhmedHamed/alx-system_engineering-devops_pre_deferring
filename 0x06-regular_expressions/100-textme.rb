#!/usr/bin/env ruby
x = ARGV[0].scan(/((?<=from:)\w+)/).join
y = ARGV[0].scan(/((?<=to:)\+\d+)/).join
z = ARGV[0].scan(/(((?<=flags:)-?\d:-?\d:-?\d:-?\d:-?\d))/).join
puts x + ',' + y + ',' + z
#puts ARGV[0].scan(/((?<=from:)\w+)/).join + ',' + puts ARGV[0].scan(/((?<=to:)\+\d+)/).join + ',' + ARGV[0].scan(/(((?<=flags:)-?\d:-?\d:-?\d:-?\d:-?\d))/).join

