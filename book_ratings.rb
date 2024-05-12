books = {
    'A History of the Vikings': 4,
    'The Art of War': 3,
    'Good TO Great': 1,
    'Super Crunchers': 2
}

puts "What would you like to do?"
puts "-- Type 'add' to add a book"
puts "-- Type 'update' to update a book"
puts "-- Type 'display' to display all book"
puts "-- Type 'delete' to delete a book"

action = gets.chomp.downcase

case action
when action = 'add'
    puts "Title to the book?"
    title = gets.chomp
        # check if it exists already. If it exists by key, it returns value
    if books[title.to_sym].nil?
        puts 'What is the rating for this book?'
        rating = gets.chomp.to_i
        books[title] = rating
        puts "#{title} has been added to books with rating of #{rating}"
    else
        puts "Movie exists and it's rating is #{books[title.to_sym]}"
    end

when action = 'update'
    puts "Enter name of Book"
    title = gets.chomp
    if books[title.to_sym].nil?
        puts "Book does not exit!"
    else 
        puts "What is the new rating?"
        rating = gets.chomp.to_i
        books[title.to_sym] = rating
        puts "Succesfully updated rating for #{title} to be #{books[title.to_sym]}"
    end

when action = 'display'
    books.each do |book, rating|
        puts "#{book}: #{rating}"
    end

when action = 'delete'
    puts "Enter title of book to delete"
    title = gets.chomp
    if books[title.to_sym].nil?
        puts "Book not found!"
    else
        books.delete(title.to_sym)
        puts "#{title} has been removed."
    end
end