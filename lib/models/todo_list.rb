require_relative 'printable'
require_relative 'writable'
require_relative 'todo_item'
require_relative 'todo_category'
require 'yaml'

class TodoList < Writable
  def initialize
    @title = stored_list["title"]
    @body = list
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
    @body.map(&:print)
  end
end
