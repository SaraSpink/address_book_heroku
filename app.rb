require ('sinatra')
require ('sinatra/reloader')
also_reload('lib/**/*.rb')
require ('./lib/contacts')
require ('pry')

get('/') do

  erb(:input)
end

post('/') do
  @first_name_app = params["first_name"]
  @last_name_app = params["last_name"]

  contact_info = Contact.new({:first_name=> @first_name_app, :last_name=> @last_name_app})
  contact_info.save
  @full_contact

  erb(:input)
end
