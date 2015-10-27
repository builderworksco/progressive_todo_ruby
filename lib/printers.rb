module Printers
  def print_as_title(title)
    name = title.to_s # turn the symbol into a string
    name = name.capitalize # capitalize the word
    name = name.center(name.length+2, ' ') # add some padding around the word
    name = name.center(40, '*') # decorate it with stars!
    puts name
  end

  def print_list_item(number, item_text)
    raise NoUnimportantTasksError.new if item_text.include? 'ignore'
    item_text.capitalize! # capitalize the word in place
    puts "#{number}.) #{item_text}" # looks like "1.) List item description"
  end
end
