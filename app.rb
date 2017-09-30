require('bundler/setup')
Bundler.require(:default)
require('pry')

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get('/') do
  @stores = Store.all()
  erb(:index)
end

post('/') do
  @stores = Store.all()
  store_name = params.fetch("store_name")
  Store.create({:name => store_name})
  # @stores = Store.all()
  redirect '/'
end

get('/store/:id') do
  @store = Store.find(params['id'])
  erb(:store)
end

post('/store/:id/delete') do
  @store = Store.find(params['id'])
  @store.delete
  redirect('/')
end
