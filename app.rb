require('bundler/setup')
Bundler.require(:default)
require('pry')

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get('/') do
  @stores = Store.all()
end

post('/') do
  store_name = params.fetch("store_name")
  Store.create({:name => store_name})
  # @stores = Store.all()
  redirect '/'
end
