require 'sinatra'

get '/' do
  "Hello World!"
end

get '/bye' do
 "good bye"
end

=begin
get '/hello/:name' do
  # "GET /hello/foo" と "GET /hello/bar" にマッチ
  # params['name'] は 'foo' か 'bar'
  "Hello #{params['name']}!"
end

get '/about' do
  "about this site page."
end
=end

get '/hello/:fname/:lname' do |f, l|
  # "GET /hello/foo" と "GET /hello/bar" にマッチ
  # params['name'] は 'foo' か 'bar'
  "Hello #{f} #{l}"
end