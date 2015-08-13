require_relative '../lib/printers'

class TodoList
  include Printers

  # Returns a list of things to do. Note the implicit return
  def retrieve_list
    {
      general: ["Buy Milk", "Buy Cheese", "Learn Ruby", "Feed the cats", "Research ninjitsu"],
      conference: ["Register for conference", "Book hotel", "Book flight", "Rent a car"]
    }
  end

  def print_title
    print_as_title('My TODO list')
  end

  def print_list
    retrieve_list.each do |list_name, list|
      print_as_title(list_name)

      list.each_with_index do |list_item, index|
        print_list_item(index + 1, list_item)
      end

      puts "\n"
    end
  end

  def print
    print_title
    print_list
  end
end
