require ('sinatra')
require ('sinatra/reloader')
also_reload('lib/**/*.rb')
require ('./lib/contacts')
require ('pry')

get('/') do

  erb(:input)
end

post('/') do
  @first_name = params.fetch["first_name"]
  @last_name = params.fetch["last_name"]
  contact_info = Contact.new({:first_name=> @first_name, :last_name=> @last_name})

  erb(:output)
end
