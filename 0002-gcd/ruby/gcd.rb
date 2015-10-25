#!/usr/bin/env ruby

def gcd(n, m)
  return m if n == 0
  return gcd(m, n) if m < n
  return gcd(m % n, n)
end

if ARGV.size < 2
  puts "Usage: #{$0} mun1 num2"
  exit 1
end

puts gcd(ARGV[0].to_i, ARGV[1].to_i)
