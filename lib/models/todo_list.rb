require_relative 'printable'
require_relative 'todo_item'

class TodoList < Printable
  def initialize
    @title = 'My TODO list'
    @list = generate_list
  end

  def generate_list
    general = []
    item_order = 1
    ["Buy Milk", "Buy Cheese", "Learn Ruby", "Feed the cats", "Research ninjitsu"].each do |text|
      item = TodoItem.new
      item.text = text
      item.order = item_order
      general << item
      item_order += 1
    end

    conference = []
    item_order = 1
    ["Register for conference", "Book hotel", "Book flight", "Rent a car"].each do |text|
      item = TodoItem.new
      item.text = text
      item.order = item_order
      conference << item
      item_order += 1
    end

    {
      general: general,
      conference: conference
    }
  end

  def print_body
    print_list
  end

  def print_list
    @list.each do |list_name, list|
      print_as_title(list_name)
      list.map(&:print)
      puts "\n"
    end
  end
end
