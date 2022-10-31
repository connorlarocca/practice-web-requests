require "http"
system "clear"

puts "Choose an option: "
puts "[1] Random Fortune"
puts "[2] Lotto"
puts "[3] Instructor Message"
input_option = gets.chomp
if input_option == "1"
  response = HTTP.get("http://localhost:3000/fortune_path.json")
  fortune = response.parse["fortune"]
  puts fortune
elsif input_option == "2"
  response = HTTP.get("http://localhost:3000/lotto_path.json")
  lotto_numbers = response.parse["message"]
  puts lotto_numbers
elsif input_option == "3"
  response = HTTP.get("http://localhost:3000/teacher_path.json")
  teacher_message = response.parse["message"]
  puts teacher_message
end
