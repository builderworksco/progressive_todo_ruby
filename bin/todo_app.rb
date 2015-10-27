=begin

todo_app.rb

This awesome app is meant to demonstrate how to code in Ruby.
Each branch of this app is progressively advanced.

::::::::::::   ...    :::::::-.      ...
;;;;;;;;''''.;;;;;;;.  ;;,   `';, .;;;;;;;.
     [[    ,[[     \[[,`[[     [[,[[     \[[,
     $$    $$$,     $$$ $$,    $$$$$,     $$$
     88,   "888,_ _,88P 888_,o8P'"888,_ _,88P
     MMM     "YMMMMMP"  MMMMP"`    "YMMMMMP"
=end


require_relative '../lib/printers'
require_relative '../lib/errors'
require_relative '../lib/todo_list'
require 'io/console'

include Printers
include CustomErrors

begin
  @list = TodoList.new
  @list.print
rescue NoUnimportantTasksError => error
  puts 'Would you really like to ignore some items?'
  if STDIN.getch == 'y'
    @list.items = TodoList.remove_ignore_items(@list)
  else
    @list.items = TodoList.unignore_items(@list)
  end
  @list.print
end
