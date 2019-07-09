#!/usr/bin/env ruby

require 'fileutils'

puts 'Enter Project Name:'
new_dir = gets
new_dir = new_dir.chomp
lib_dir = new_dir + '/lib'
spec_dir = new_dir + '/spec'
FileUtils.mkdir_p [new_dir, lib_dir, spec_dir]
IO.write(new_dir + "/Gemfile", "source 'https://rubygems.org'\n\ngem 'byebug'\ngem 'rspec', '~> 3.2.0'")
