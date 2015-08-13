require_relative 'printable'
require_relative 'todo_item'
require_relative 'todo_category'
require 'yaml'

class TodoList < Printable
  def initialize
    @title = stored_list["title"]
  end

  def list
    out = []
    stored_list["categories"].each do |name, category|
      out << TodoCategory.new(name, *category["items"])
    end
    out
  end

  def stored_list
    YAML.load_file('data/todo.yml')["list"]
  end

  def print_body
    list.map(&:print)
  end
end
