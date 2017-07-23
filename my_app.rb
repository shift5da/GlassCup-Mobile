require 'sinatra'
require "sinatra/reloader" if development?


# 创建一个存放静态文件的目录，主要存放css、js、font、image等文件
set :public_folder, File.dirname(__FILE__) + '/static'

# 在任何路由代码块或过滤器抛出异常时，会调用 error 处理器。 但注意在开发环境下只有将 show exceptions 项设置为 :after_handler 时，才会生效。
set :show_exceptions, :after_handler if development?



get '/' do
  erb :'login', :layout => :layout_blank
end

get '/:role_name/welcome' do
  erb :"#{params['role_name']}/welcome"
end

get '/:role_name/task' do
  erb :"#{params['role_name']}/task"
end

get '/:role_name/task/:task_id' do
  erb :"#{params['role_name']}/task_#{params['task_id']}"
end

get '/:role_name/task/:task_id/handler' do
  erb :"#{params['role_name']}/task_#{params['task_id']}_handler"
end

get '/:role_name/around' do
  erb :"#{params['role_name']}/around"
end

get '/:role_name/daily' do
  erb :"#{params['role_name']}/daily"
end

get '/:role_name/alert' do
  erb :"#{params['role_name']}/alert"
end

get '/:role_name/alert/:alert_id' do
  erb :"#{params['role_name']}/alert_#{params['alert_id']}"
end

get '/:role_name/alert/:alert_id/handler' do
  erb :"#{params['role_name']}/alert_#{params['alert_id']}_handler"
end

get '/:role_name/information' do
  erb :"#{params['role_name']}/information"
end
