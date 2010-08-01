require 'rubygems'
require 'sinatra'
require 'cgi'
require 'faye'
require 'eventmachine'
require 'json'
base_url = "http://localhost:3000"
use Faye::RackAdapter, :mount => '/faye', :timeout => 45
  get '/publish' do
    EM.run {
      response = AppServerApi.send("do_#{params[:command]}", CGI.unescape(params[:api_path]))
      env['faye.client'].publish(params[:channel], 'response' => JSON.parse(response.body))
      x=1
    }
  end
  
  
  require 'httparty'

  class AppServerApi
    include HTTParty
    base_uri 'localhost:3000'
    default_params :apiKey => '11223344'

    def self.do_get(path)
      get(path)
    end

    def self.do_post(path)
      post(path)
    end
    
    def self.do_delete(path)
      delete(path)
    end
    
  end