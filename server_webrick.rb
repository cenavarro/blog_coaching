require 'webrick'
require 'tester'

include WEBrick

require './rest_servlet/servlet'

root_directory = Dir::pwd
port = 2000

puts "Starting server: http://localhost:#{port}"

server = HTTPServer.new(:Port => port, :DocumentRoot => root_directory)
server.mount '/', RestServlet
trap("INT") {server.shutdown}
server.start
