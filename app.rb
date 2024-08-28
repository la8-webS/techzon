require 'bundler/setup'
Bundler.require
require 'sinatra/reloader' if development?
require './models.rb'
require 'json'
require 'dotenv/load'
## 各種設定ファイル
require "./utils/permission.rb"
require "./utils/setting.rb"


enable :sessions

get "/" do
  erb :index
end