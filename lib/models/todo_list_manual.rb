require_relative 'printable'
class TodoListManual < Printable
  def initialize
    @title = 'Todo List'
    @body = 'This is the manual for the Todo list app'
  end
end
