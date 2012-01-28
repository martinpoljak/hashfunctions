# encoding: utf-8
require 'rubygems'
require 'rake'
require 'rake/extensiontask'

spec = Gem::Specification.new do |s|
  s.name = "hashfunctions"
  s.email = "martinkozak@martinkozak.net"
  s.author = "Martin Kozák"
  s.platform = Gem::Platform::RUBY
  s.summary = "11 fast hash functions for general purpose non-cryptographic use."
  s.description = "11 fast hash functions for general purpose non-cryptographic use implemented originally by Arash Partow. Uses the C extension if appropriate gem is available."
  s.homepage = "http://github.com/martinkozak/hashfunctions"
  s.license = "CPL"
  s.version = "1.0.0"
  s.files = `git ls-files`.split("\n")
  s.add_development_dependency("rake", ">= 0")
  s.add_development_dependency("rake-compiler", ">= 0")
end

Gem::PackageTask.new(spec) do |pkg|
end
