
require 'httparty'

ottawa_wards_response = HTTParty.get('https://represent.opennorth.ca/boundaries/?sets=ottawa-wards')

ottawa_wards_json = JSON.parse(ottawa_wards_response.body)

# Exercise 1: Iterate through hash

ottawa_wards_json['objects'].each do |ward|
  puts "ward['name']"
end

# Exercise 2: Select another url and iterate through hash to access first and last name

candidates = HTTParty.get('https://represent.opennorth.ca/candidates')
candidates_json = JSON.parse(candidates.body)

candidates_json['objects'].each do|candidate|
 puts candidate["first_name"]["last_name"]
end
