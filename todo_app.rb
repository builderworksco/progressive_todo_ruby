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
lists_by_category = {
  general: ["Buy Milk", "Buy Cheese", "Learn Ruby", "Feed the cats", "Research ninjitsu"],
  conference: ["Register for conference", "Book hotel", "Book flight", "Rent a car"]
}

lists_by_category.each do |list_name, list|

  puts list_name.to_s
  puts "============"

  list.each_with_index do |list_item, index|
    number = index + 1
    puts "#{number}.) #{list_item}" # looks like "1.) List item description"
  end

  puts "\n"
end
