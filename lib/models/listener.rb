require 'io/console'
require_relative 'todo_item'
require_relative 'todo_category'

class Listener
  def self.todo_list
    todo_cats = []
    categories = listen_for_list('Enter a category', 0)

    categories.each do |category|
      puts "\n -> Building category: #{category}"
      items = listen_for_list('Enter a list item', 4)
      todo_cats << TodoCategory.new(category, *items)
    end

    TodoList.new(todo_cats)
  end

  def self.listen_for_list(list_prompt, pad_prompt)
    list = []
    puts list_prompt.center(list_prompt.length+pad_prompt, '-')
    while (input = gets) && input.chr != "\u0004"
      input.chomp!
      puts list_prompt.center(list_prompt.length+pad_prompt, '-')
      list << input
    end
    list
  end
end
