class Displayer
  attr_accessor :display_object

  def initialize(any_object)
    @display_object = any_object
  end

  def display
    @display_object.output
  end
end
