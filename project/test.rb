require 'unirest'


# These code snippets use an open-source library.
# response = Unirest.get "https://ahmedakhan-game-review-information-v1.p.mashape.com/api/v1/search?game_name=Call+of+Duty",
#   headers:{
#     "X-Mashape-Key" => "xY0URusDgNmshvLuN3eeIScC5yLep1CiD9JjsnFRSkNWMHed5y",
#     "Accept" => "application/json"
#   }


#   puts response.body 
#   puts response.raw_body

response = Unirest.get "https://ahmedakhan-game-review-information-v1.p.mashape.com/api/v1/search?game_name", 
                        headers:{    "X-Mashape-Key" => "xY0URusDgNmshvLuN3eeIScC5yLep1CiD9JjsnFRSkNWMHed5y",
    "Accept" => "application/json"}, 
                        parameters:{ :game_name => 23, :foo => "bar" }

response.code # Status code
response.headers # Response headers
response.body # Parsed body
response.raw_body # Unparsed body

  Unirest.get(url, headers: {}, parameters: nil, auth:nil, &callback)