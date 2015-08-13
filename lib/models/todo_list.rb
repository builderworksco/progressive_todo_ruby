require_relative 'printable'
require_relative 'todo_item'
require_relative 'todo_category'
require 'json'

class TodoList < Printable
  def initialize
    @title = stored_list["title"]
  end

  def list
    out = []
    stored_list["categories"].each do |category|
      out << TodoCategory.new(category["name"], *category["items"])
    end
    out
  end

  def stored_list
    JSON.parse(File.read('data/todo.json'))["list"]
  end

  def print_body
    list.map(&:print)
  end
end
