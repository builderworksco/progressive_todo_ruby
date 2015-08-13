require_relative 'printable'

class TodoCategory < Printable
  attr_accessor :name, :items_input, :items

  def initialize(name, *items_input)
    @name = name
    @items_input = items_input
    @items = []
    format_input
  end

  def format_input
    item_order = 1
    @items_input.each do |text|
      @items << TodoItem.new(text: text, order: item_order)
      item_order += 1
    end
  end

  def print
    print_as_title(@name)
    @items.map(&:print)
  end

  def to_s
    str = @name+"\r\n"
    @items.each do |item|
      str += item.to_s
    end
    str
  end
end
