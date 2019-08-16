# frozen_string_literal: true

require 'rest-client'

puts 'Type your Bing search'
search = gets.chomp
response = RestClient.get "https://www.bing.com/search?q='#{search}'"
puts response.code
puts '-' * 20
puts 'Header:'
puts response.headers
puts '-' * 20
puts 'Body:'
puts response.body
puts '-' * 20
puts 'Cookies:'
puts response.cookies
