#!/usr/bin/env ruby

root = File.expand_path('../..', __dir__)
dirs = Dir.glob(File.expand_path('*/*', root))
katas = dirs.reject {|d| d =~ /README.md/ }.map {|d| File.basename(File.dirname(d))}.uniq
langs = dirs.reject {|d| d =~ /README.md/ }.map {|d| File.basename(d)}.uniq

# Header
puts <<-EOS
# katamatrix
CodeKata in multi-languages

EOS

# Table of links
url_base = "https://github.com/hssh/katamatrix/tree/master"

puts ([''] + langs).join(' | ')
puts '--:|' + ([':--:'] * langs.size).join('|')
katas.each do |kata|
  links = langs.map do |lang|
    Dir.exists?(File.expand_path("#{kata}/#{lang}", root)) ? "[o](#{url_base}/#{kata}/#{lang})" : '-'
  end
  puts (["[#{kata}](#{url_base}/#{kata})"] + links).join(' | ')
end
