# DO NOT PUSH TO GIT WITH API KEYS!!!! BLANK OUT AND PUT APIKEY PLACEHOLDER!!!

require "http"

system "clear"
puts "IT'S THE DICTIONARY, BAYBEEEEE!!!!! Type 'done' when you are done!"
# word = gets.chomp
done = false
while done == false
  puts "Enter a word:"
  word = gets.chomp
  if word != "done"
    response1 = HTTP.get("https://api.wordnik.com/v4/word.json/#{word}/definitions?limit=200&includeRelated=false&useCanonical=false&includeTags=false&api_key=(APIKEY)")

    response2 = HTTP.get("https://api.wordnik.com/v4/word.json/#{word}/pronunciations?useCanonical=false&limit=50&api_key=(APIKEY)")

    response3 = HTTP.get("https://api.wordnik.com/v4/word.json/#{word}/examples?includeDuplicates=false&useCanonical=false&limit=5&api_key=(APIKEY)")

    definition = response1.parse(:json)[0]["text"]
    example = response3.parse(:json)["text"]
    pron = response2.parse(:json)[0]["raw"]

    puts "Your word is #{word}. The definition is: #{definition}"
    puts "The word #{word} in a sentence: #{example}"
    puts "The pronunciation of #{word} is: #{pron}"
  else
    puts "SEEYA!"
    done = true
  end
end
