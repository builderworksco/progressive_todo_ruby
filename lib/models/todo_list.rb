require_relative 'printable'

class TodoList < Printable
  def retrieve_list
    {
      general: ["Buy Milk", "Buy Cheese", "Learn Ruby", "Feed the cats", "Research ninjitsu"],
      conference: ["Register for conference", "Book hotel", "Book flight", "Rent a car"]
    }
  end

  def title
    'My TODO list'
  end

  def print_body
    print_list
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
end
