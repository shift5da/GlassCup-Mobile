require 'sinatra'
require "sinatra/reloader" if development?


# 创建一个存放静态文件的目录，主要存放css、js、font、image等文件
set :public_folder, File.dirname(__FILE__) + '/static'

# 在任何路由代码块或过滤器抛出异常时，会调用 error 处理器。 但注意在开发环境下只有将 show exceptions 项设置为 :after_handler 时，才会生效。
set :show_exceptions, :after_handler if development?


get '/' do
  erb :'welcome'
end

get '/welcome' do
  erb :'welcome'
end

get '/around' do
  erb :'around'
end

get '/asset' do
  erb :'asset'
end

get '/task' do
  erb :'task'
end

get '/daily' do
  erb :'daily'
end
