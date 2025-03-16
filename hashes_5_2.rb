# 2 ways of making hash tables
# 1
new_hash = { 
    "First name" => "Yukihiro",
    "Last name" => "Matsumoto",
    "Age" => 47,
    "Nationality" => "Japanese",
    "Nickname" => "Matz",
    # most commonly used as a key name, the symbol. Best for memory allocation and unique to its name
    ham: 'type of food'
}
# or
second_hash = Hash.new("custom error message for when you get NIL")


# iterating through hashes
new_hash.each do | key, value |
    puts new_hash[key]
end

# convertin from symbol to string and vice versa
:symbol.to_s
"string".to_sym
#  better example
strings = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]

symbols = []

strings.each do |s|
    x = s.to_sym
    # x = s.intern          - this also works and does the same
    symbols.push(x)
end

print symbols



# selecting through a hash table
movie_ratings = {
    memento: 3,
    primer: 3.5,
    the_matrix: 5,
    truman_show: 4,
    red_dawn: 1.5,
    skyfall: 4,
    alex_cross: 2,
    uhf: 1,
    lion_king: 3.5
}
# Add your code below!
good_movies = movie_ratings.select{|movie,rating| rating > 3}
# just the key
movie_ratings.each_key{|name| puts name}

puts good_movies



# iterating through just keys or just values
my_hash = { one: 1, two: 2, three: 3 }

my_hash.each_key { |k| print k, " " }

my_hash.each_value { |v| print v, " " }