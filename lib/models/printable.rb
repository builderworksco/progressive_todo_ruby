require_relative '../../lib/modules/printers'

class Printable
  include Printers

  def print
    print_title
    print_body
  end

  def print_title
    print_as_title(title)
  end

  def print_body
    puts body
  end
end