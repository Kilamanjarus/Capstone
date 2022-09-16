require "uri"
require "net/http"
require "openssl"
require "JSON"
require "pry"
require "http"

url = URI("https://exercisedb.p.rapidapi.com/exercises")

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_NONE

request = Net::HTTP::Get.new(url)
request["X-RapidAPI-Key"] = "62eb0a0390msh8c8a9a1010c88d1p1907eejsn3e35fa34b8cd"
request["X-RapidAPI-Host"] = "exercisedb.p.rapidapi.com"

# pry

response = http.request(request)
test = JSON.parse(response.body)
# p test
# test.sort_by(id)
test.each do |exercise|
  # p exercise["gifUrl"]
  if HTTP.get(exercise["gifUrl"]).status == 200
    Exercise.create(exercise)
  end
end
