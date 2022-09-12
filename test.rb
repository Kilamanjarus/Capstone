url = URI("https://exercisedb.p.rapidapi.com/exercises")

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_NONE

request = Net::HTTP::Get.new(url)
request["X-RapidAPI-Key"] = ""
request["X-RapidAPI-Host"] = "exercisedb.p.rapidapi.com"

response = http.request(request)
response = response.read_body
p response
response.each do |exercise|
  # puts exercise
end
