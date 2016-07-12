require 'minitest/autorun'
require 'minitest/pride'
require './issues'


class test_GithubRepo
  def perform_requests(args)
    File.read("./test/create_repo.json")


  def str.read_body
    self
  end
  str
end
end


class test_Repocreator < Minitest::test

  def we_can_create_repo
    maker = GithubRepo.new("waffle_son")
    payload = maker.create_repo_now
    assert_equal "waffle_son", payload ["name"]
  end
end



http = NET::HTTP.new(uri.host, uri.port)
req = NET::HTTP.Get.new(uri.request_uri)
req.basic_auth("username", "password")
response = http.request(request)
