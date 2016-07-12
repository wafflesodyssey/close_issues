

http = NET::HTTP.new(uri.host, uri.port)
req = NET::HTTP.Get.new(uri.request_uri)
req.basic_auth("username", "password")
response = http.request(request)
