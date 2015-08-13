module Printers
  def print_as_title(title)
    name = title.to_s # turn the symbol into a string
    name = name.capitalize # capitalize the word
    name = name.center(name.length+2, ' ') # add some padding around the word
    name = name.center(40, '*') # decorate it with stars!
    puts name
  end

  def print_list_item(number, item)
    text = item.text.capitalize
    puts "#{number}.) #{text}" # looks like "1.) List item description"
  end
end
