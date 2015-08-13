require_relative '../models/todo_list'

module Modifiers
  refine TodoList do
    def print
      print_list
    end
  end
end
