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


require_relative '../lib/models/todo_list'
require_relative '../lib/models/displayer'
require_relative '../lib/modules/modifiers'

Displayer.new(TodoList.new).display
