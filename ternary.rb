    # ternary operations

puts "this is a ternary"? 'yes': 'no'






    # switch case
    puts "Hello there!"
    greeting = gets.chomp
    
    # Add your case statement below!
    case greeting
    when "English"
        puts "Hello!"
    when "French"
        puts "Bonjour!"
    when "German"
        puts "Guten Tag!"
    when "Finnish"
        puts "Haloo!"
    else
        puts "I don't know that language!'"
    end





    # conditional assinging
    favorite_book = nil
    puts favorite_book
    
    favorite_book ||= "Cat's Cradle"
    puts favorite_book
    
    favorite_book ||= "Why's (Poignant) Guide to Ruby"
    puts favorite_book
    
    favorite_book = "Why's (Poignant) Guide to Ruby"
    puts favorite_book