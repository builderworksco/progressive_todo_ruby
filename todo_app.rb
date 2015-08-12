list = [".) Buy Milk", ".) Buy Cheese", ".) Learn Ruby",
  ".) Feed the cats", ".) Register for conference (conference)",
  ".) Book hotel (conference)", ".) Book flight (conference)",
  ".) Rent a car (conference)", ".) Research ninjitsu"]

list.each_with_index do |list_item, index|
  number = index + 1
  puts number.to_s + list_item
end
