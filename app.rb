require ('sinatra')
require ('sinatra/reloader')
also_reload('lib/**/*.rb')
require ('./lib/contacts')
require ('pry')

  get('/') do
    @list = Contact.all()
    erb(:input)
  end

  get('/contacts/:id') do
    @contact_id = Contact.find(params[:id])
    erb(:contact_id)
  end

post('/') do
  @first_name_app = params["first_name"]
  @last_name_app = params["last_name"]
  @list = Contact.all()

  contact_info = Contact.new({:first_name=> @first_name_app, :last_name=> @last_name_app})
  contact_info.save


  erb(:input)
end
