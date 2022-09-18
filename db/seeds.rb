# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

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

request["X-RapidAPI-Key"] = ""
request["X-RapidAPI-Host"] = "exercisedb.p.rapidapi.com"

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
