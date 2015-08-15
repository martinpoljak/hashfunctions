# encoding: utf-8
# (c) 2012 Martin Kozák (martinkozak@martinkozak.net)

require "rubygems"
require "zlib"

string = "Příliš žluťoučký kůň úpěl ďábelské ódy." * 4 * 1000 * 1000 * 5

###

# CRC32
t1 = Time.now.to_f
Zlib::crc32(string)
t2 = Time.now.to_f

puts "CRC32;" << (string.bytesize / (t2 - t1)).to_s

# ADLER32
t1 = Time.now.to_f
Zlib::adler32(string)
t2 = Time.now.to_f

puts "ADLER32;" << (string.bytesize / (t2 - t1)).to_s
