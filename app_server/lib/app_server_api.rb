require 'httparty'
 
class AppServerApi
  include HTTParty
  base_uri 'localhost:4567'
  default_params :apiKey => '11223344'
 
  def self.do_get(path)
    get(path)
  end
  
  def self.do_post(path)
    post(path)
  end
end