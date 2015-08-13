class TodoItem
  attr_accessor :text, :is_complete, :order

  def print
    puts "#{order}.) #{text.capitalize}"
  end
end
