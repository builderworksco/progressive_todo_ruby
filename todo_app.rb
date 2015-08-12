=begin

todo_app.rb

This awesome app is meant to demonstrate how to code in Ruby.
Each branch of this app is progressively advanced.

::::::::::::   ...    :::::::-.      ...
;;;;;;;;''''.;;;;;;;.  ;;,   `';, .;;;;;;;.
     [[    ,[[     \[[,`[[     [[,[[     \[[,
     $$    $$$,     $$$ $$,    $$$$$,     $$$
     88,   "888,_ _,88P 888_,o8P'"888,_ _,88P
     MMM     "YMMMMMP"  MMMMP"`    "YMMMMMP"
=end

# List of things to do
list = ["Buy Milk", "Buy Cheese", "Learn Ruby",
  "Feed the cats", "Register for conference (conference)",
  "Book hotel (conference)", "Book flight (conference)",
  "Rent a car (conference)", "Research ninjitsu"]

list.each_with_index do |list_item, index|
  number = index + 1
  puts "#{number}.) #{list_item}" # looks like "1.) List item description"
end
