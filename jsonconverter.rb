require 'csv'
require 'json'

convert = CSV.open('input.csv', :headers => true).map { |x| x.to_h }.to_json

File.open('output.json', 'w') do |file|
file.puts(convert)
end 
