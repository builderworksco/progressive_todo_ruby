require_relative 'printable'
require_relative 'todo_item'
require_relative 'todo_category'

class TodoList < Printable
  def initialize
    @title = 'My TODO list'
  end

  def list
    [
      TodoCategory.new(:general, "Buy Milk", "Buy Cheese", "Learn Ruby", "Feed the cats", "Research ninjitsu"),
      TodoCategory.new(:conference, "Register for conference", "Book hotel", "Book flight", "Rent a car")
    ]
  end

  def print_body
    list.map(&:print)
  end
end
