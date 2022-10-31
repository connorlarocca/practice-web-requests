require "http"

system "clear"

done = false
while done == false
  puts "Welcome to the MusicBrainzAPI! Enter a band to get some info! Otherwise, enter 'done' to exit!"
  band = gets.chomp
  if band != "done"
    response = HTTP.get("http://musicbrainz.org/ws/2/artist/5b11f4ce-a62d-471e-81fc-a69a8278c7da?inc=aliases")
    puts "The band you entered was #{band}."
    puts "Here's a short bio about #{band}"
  else
    puts "SEEYA!"
    done = true
  end
end
