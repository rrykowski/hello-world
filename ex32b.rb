# Making my own game to play with logic and methods

def split_words(string)
  words = string.split(" ")
  words
end

def print_string(string, rpt)
  rpt.times { puts string }
end

puts "Please enter a string to mess with."
string = gets.chomp

puts "Now enter a number of times to print the string."
rpt = gets.chomp.to_i

print_string(string, rpt)

puts "Now enter the one word from the previous string.\nLet me refresh your memory."
words = split_words(string)
puts words.join(" ")
word = gets.chomp
puts "Do you want to repeat it or remove it?"

loop do
  puts "Enter repeat or remove"
  word_times = gets.chomp
  if word_times == "repeat" || word_times == "remove"
    break
  end
end

if word_times == "repeat"
  words.insert(-1, word)
elsif word_times == "remove"
  words.delete(word)
end


print words.join(" ")
