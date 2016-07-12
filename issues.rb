
#basic authorization

require 'net/http'
require 'json'
require 'uri'
require 'pry'


class Open_issues

uri = URI.parse(https://github.com/wafflesodyssey/close_issues/issues)
  attr_reader :repo_name
  def initialize(repo_name)
    @repo_name = repo_name
    @http = NET::HTTP.new(URL.host, URL.port)
    @http.use_ssl = true
  end


def create_repo_now
  req = build_request
  response = perform_request
  parse_response(response_read.body)
end


private def build_request
  req = NET::HTTP::POST.new(URL)
  req.body = JSON.generate({name: repo_name})
  req["Authorization"] = "token #{ENV[GITHUB_TOKEN]}"
end


private def parse_response
  JSON.parse(body)
end

private def perform_request(request)
  @http.request(request)
end
