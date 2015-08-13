require_relative 'printable'
require_relative 'todo_item'

class TodoList < Printable
  def initialize
    @title = 'My TODO list'
    @list = generate_list
  end

  def generate_list
    general = []
    ["Buy Milk", "Buy Cheese", "Learn Ruby", "Feed the cats", "Research ninjitsu"].each do |text|
      item = TodoItem.new
      item.text = text
      general << item
    end

    conference = []
    ["Register for conference", "Book hotel", "Book flight", "Rent a car"].each do |text|
      item = TodoItem.new
      item.text = text
      conference << item
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

      list.each_with_index do |list_item, index|
        print_list_item(index + 1, list_item)
      end

      puts "\n"
    end
  end
end
