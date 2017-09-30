require('bundler/setup')
Bundler.require(:default)
require('pry')

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get('/') do
  @stores = Store.all()
  @shoes = Shoe.all()
  erb(:index)
end

post('/') do
  store_name = params.fetch("store_name")
  Store.create({:name => store_name})
  @stores = Store.all()
  redirect '/'
end

get('/shoe') do
  @shoes = Shoe.all()
  erb(:shoe)
end

post('/shoe') do
  shoe_brand = params.fetch("shoe_brand")
  shoe_price = params.fetch("shoe_price")
  Shoe.create({:brand => shoe_brand, :price => shoe_price})
  @shoes = Shoe.all()
  erb(:shoe)
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

get '/store/:id/edit' do
  "Hello World2"
  @store = Store.find(params['id'])
  erb(:edit_store)
end

post('/store/:id/edit') do
  new_store_name = params.fetch("new_store_name")
  @store = Store.find(params['id'])
  @store.update({:name => new_store_name})
  erb(:edit_store)
end

get '/store/:id/edit/shoes' do
  @store = Store.find(params['id'])
  @shoes = Shoe.all()
  erb(:edit_shoes_in_store)
end

post '/store/:id/edit/shoes' do
  @store = Store.find(params['id'])
  @shoes = Shoe.all()
  erb(:edit_shoes_in_store)
end
