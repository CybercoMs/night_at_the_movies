movies = {
}
puts "What would you like to do?"
puts "-- Type 'add' to add a movie."
puts "-- Type 'update' to update a movie."
puts "-- Type 'display' to display all movies."
puts "-- Type 'delete' to delete a movie."

choice = gets.chomp.downcase
case choice
when 'add' 
 puts "What movie do you want to add?"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "What's the rating? (Type a number 0 to 4.)"
  rating = gets.chomp
  movies[title.to_sym] = rating.to_i
    puts "#{title} has been added with a rating of #{rating}."
  else
      puts "movie exists"
    
  end
  
when "update" 
    
  puts "What movie do you want to add?"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "you can not update a movie that isnt here"
    
  else 
    puts "What is the updated rating?"
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
    
  end
  
when "display" 
    
    movies.each puts "#{title}: #{rating}"
    
when "delete"

    puts "What is the title of the movie?"
    title = gets.chomp
    if movies[title.to_sym].nil?
    puts "Error!"
    else
    movies.delete(title)
  end
  
else 
    
    puts "Error!"
    
end
