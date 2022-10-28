require "http"

response = HTTP.get("")

pp response.parse(:json)
