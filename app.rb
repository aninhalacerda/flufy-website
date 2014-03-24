require 'rubygems'
require 'sinatra'
require 'slim'
require 'data_mapper'

#datamapper ---- models
DataMapper.setup(:default, 'mysql://flufyuser:d4t4!flufy@localhost/flufy_db')

class Task
  include DataMapper::Resource
  property :id,           Serial
  property :name,         String, :required => true
  property :completed_at, DateTime
  belongs_to :list
end
 
class List
  include DataMapper::Resource
  property :id,           Serial
  property :name,         String, :required => true
  has n, :tasks, :constraint => :destroy 
end
DataMapper.finalize
# ------------------------------


get '/' do
  @lists = List.all(:order => [:name])
  slim :index
end

#post para criar Task
post '/:id' do
  List.get(params[:id]).tasks.create params['task']
  redirect to('/')
end

#post para criar Lista
post '/new/list' do
  List.create params['list']
  redirect to('/')
end

#out: completar tasks
put '/task/:id' do
  task = Task.get params[:id]
  task.completed_at = task.completed_at.nil? ? Time.now : nil
  task.save
  redirect to('/')
end

delete '/task/:id' do
  Task.get(params[:id]).destroy
  redirect to('/')
end

delete '/list/:id' do
  List.get(params[:id]).destroy
  redirect to('/')
end
