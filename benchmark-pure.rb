# encoding: utf-8
# (c) 2012 Martin Kozák (martinkozak@martinkozak.net)

require "general-hash-functions"

string = "Příliš žluťoučký kůň úpěl ďábelské ódy." * 4 * 1000 * 10

###

# RS
t1 = Time.now.to_f
GeneralHashFunctionsPure::rshash(string)
t2 = Time.now.to_f

puts "RS;" << (string.bytesize / (t2 - t1)).to_s

# JS
t1 = Time.now.to_f
GeneralHashFunctionsPure::jshash(string)
t2 = Time.now.to_f

puts "JS;" << (string.bytesize / (t2 - t1)).to_s

# ELF
t1 = Time.now.to_f
GeneralHashFunctionsPure::elfhash(string)
t2 = Time.now.to_f

puts "ELF;" << (string.bytesize / (t2 - t1)).to_s

# BKDR
t1 = Time.now.to_f
GeneralHashFunctionsPure::bkdrhash(string)
t2 = Time.now.to_f

puts "BKDR;" << (string.bytesize / (t2 - t1)).to_s

# SDBM
t1 = Time.now.to_f
GeneralHashFunctionsPure::sdbmhash(string)
t2 = Time.now.to_f

puts "SDBM;" << (string.bytesize / (t2 - t1)).to_s

# DJB
t1 = Time.now.to_f
GeneralHashFunctionsPure::djbhash(string)
t2 = Time.now.to_f

puts "DJB;" << (string.bytesize / (t2 - t1)).to_s

# DEK
t1 = Time.now.to_f
GeneralHashFunctionsPure::dekhash(string)
t2 = Time.now.to_f

puts "DEK;" << (string.bytesize / (t2 - t1)).to_s

# BP
t1 = Time.now.to_f
GeneralHashFunctionsPure::bphash(string)
t2 = Time.now.to_f

puts "BP;" << (string.bytesize / (t2 - t1)).to_s

# FNV
t1 = Time.now.to_f
GeneralHashFunctionsPure::fnvhash(string)
t2 = Time.now.to_f

puts "FNV;" << (string.bytesize / (t2 - t1)).to_s
