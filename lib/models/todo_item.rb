class TodoItem
  attr_accessor :text, :is_complete, :order

  def initialize(options = {})
    @text = options[:text]
    @is_complete = options[:is_complete]
    @order = options[:order]
  end

  def print
    puts self.to_s
  end

  def to_s
    "#{order}.) #{text.capitalize}\r\n"
  end
end
