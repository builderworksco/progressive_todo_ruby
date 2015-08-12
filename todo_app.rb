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

def print_as_title(title)
  name = title.to_s # turn the symbol into a string
  name = name.capitalize # capitalize the word
  name = name.center(name.length+2, ' ') # add some padding around the word
  name = name.center(40, '*') # decorate it with stars!
  puts name
end

def print_list_item(number, item_text)
  item_text.capitalize! # capitalize the word in place
  puts "#{number}.) #{item_text}" # looks like "1.) List item description"
end

# List of things to do
lists_by_category = {
  general: ["Buy Milk", "Buy Cheese", "Learn Ruby", "Feed the cats", "Research ninjitsu"],
  conference: ["Register for conference", "Book hotel", "Book flight", "Rent a car"]
}

print_as_title('My TODO list')

lists_by_category.each do |list_name, list|

  print_as_title(list_name)

  list.each_with_index do |list_item, index|
    print_list_item(index + 1, list_item)
  end

  puts "\n"
end
