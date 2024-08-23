require 'httpparty'
require 'json'

url = 'http://127.0.0.1:3000/'

response = HTTParty.get(url)


 puts "Response code: #{response.code}"
 puts "Response body: #{response.body}"

body_content = JSON.parse(response.body)

puts "mensagem: #{body_content["mensagem"]}"

# class ExampleAPI
#   include HTTParty
#   base.uri 'api.example.com'

#   def get_data
#     self.class.get("/path")
#    end
#  end


#  api = ExampleAPI.new
#  response = api.get_data

#  puts "Response code: #{response.code}"
#  puts "Response body: #{response.body}"

 
