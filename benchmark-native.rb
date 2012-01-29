# encoding: utf-8
# (c) 2012 Martin Kozák (martinkozak@martinkozak.net)

require "general-hash-functions"
require "digest"

string = "Příliš žluťoučký kůň úpěl ďábelské ódy." * 4 * 1000 * 1000 * 5

###

# MD5
t1 = Time.now.to_f
Digest::SHA1.hexdigest(string)
t2 = Time.now.to_f

puts "MD5;" << (string.bytesize / (t2 - t1)).to_s

# SHA1
t1 = Time.now.to_f
Digest::SHA1.hexdigest(string)
t2 = Time.now.to_f

puts "SHA1;" << (string.bytesize / (t2 - t1)).to_s

# SHA2
t1 = Time.now.to_f
Digest::SHA2.hexdigest(string)
t2 = Time.now.to_f

puts "SHA2;" << (string.bytesize / (t2 - t1)).to_s

# RIPEMD-160
t1 = Time.now.to_f
Digest::RMD160.hexdigest(string)
t2 = Time.now.to_f

puts "RMD160;" << (string.bytesize / (t2 - t1)).to_s

# RS
t1 = Time.now.to_f
GeneralHashFunctionsExt::rshash(string)
t2 = Time.now.to_f

puts "RS;" << (string.bytesize / (t2 - t1)).to_s

# JS
t1 = Time.now.to_f
GeneralHashFunctionsExt::jshash(string)
t2 = Time.now.to_f

puts "JS;" << (string.bytesize / (t2 - t1)).to_s

# ELF
t1 = Time.now.to_f
GeneralHashFunctionsExt::elfhash(string)
t2 = Time.now.to_f

puts "ELF;" << (string.bytesize / (t2 - t1)).to_s

# BKDR
t1 = Time.now.to_f
GeneralHashFunctionsExt::bkdrhash(string)
t2 = Time.now.to_f

puts "BKDR;" << (string.bytesize / (t2 - t1)).to_s

# SDBM
t1 = Time.now.to_f
GeneralHashFunctionsExt::sdbmhash(string)
t2 = Time.now.to_f

puts "SDBM;" << (string.bytesize / (t2 - t1)).to_s

# DJB
t1 = Time.now.to_f
GeneralHashFunctionsExt::djbhash(string)
t2 = Time.now.to_f

puts "DJB;" << (string.bytesize / (t2 - t1)).to_s

# DEK
t1 = Time.now.to_f
GeneralHashFunctionsExt::dekhash(string)
t2 = Time.now.to_f

puts "DEK;" << (string.bytesize / (t2 - t1)).to_s

# BP
t1 = Time.now.to_f
GeneralHashFunctionsExt::bphash(string)
t2 = Time.now.to_f

puts "BP;" << (string.bytesize / (t2 - t1)).to_s

# FNV
t1 = Time.now.to_f
GeneralHashFunctionsExt::fnvhash(string)
t2 = Time.now.to_f

puts "FNV;" << (string.bytesize / (t2 - t1)).to_s

# AP
t1 = Time.now.to_f
GeneralHashFunctionsExt::aphash(string)
t2 = Time.now.to_f

puts "AP;" << (string.bytesize / (t2 - t1)).to_s
