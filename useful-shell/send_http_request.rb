# -*- coding: UTF-8 -*-

require "net/https"  
require "uri"  
  
uri = URI.parse("https://www.baidu.com/")  
http = Net::HTTP.new(uri.host, uri.port)  
http.use_ssl = true  
http.verify_mode = OpenSSL::SSL::VERIFY_NONE  

# https get 请求
request = Net::HTTP::Get.new(uri.request_uri)  

response = http.request(request) 


puts response.code  # 200
puts response.message # OK
puts response.body

