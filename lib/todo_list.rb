require_relative '../lib/printers'

class TodoList
  attr_accessor :items
  include Printers

  def initialize
    @items = {
      general: ["Buy Milk", "Buy Cheese ignore", "Learn Ruby", "Feed the cats", "Research ninjitsu"],
      conference: ["Register for conference", "Book hotel", "Book flight", "Rent a car"]
    }
  end

  # Returns a list of things to do. Note the implicit return
  def retrieve_list
    @items
  end

  def print_title
    print_as_title('My TODO list')
  end

  def print_list
    retrieve_list.each do |list_name, list|
      print_as_title(list_name)

      list.each_with_index do |list_item, index|
        print_list_item(index + 1, list_item)
      end

      puts "\n"
    end
  end

  def print
    print_title
    print_list
  end

  def self.remove_ignore_items(list)
    temp_items = {}
    list.each do |category, category_list|
      category_list.reject! do |item|
        item.include? 'ignore'
      end
      temp_items[category] = category_list
    end
    temp_items
  end

  def self.unignore_items(list)
    temp_items = {}
    list.each do |category, category_list|
      category_list.map do |item|
        item.gsub!('ignore','')
      end
      temp_items[category] = category_list
    end
    temp_items
  end

end
