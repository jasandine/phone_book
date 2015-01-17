require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/contact')
require('./lib/phone')

get ('/') do 
	@phones = Phone.all()
	erb(:index)
end

post('/phones') do 
	name = params.fetch('name')
	Phone.new(name).save()
	@phones = Phone.all()
	erb(:index)
end

post('/contacts') do 
	home = params.fetch("home") 
	cell = params.fetch("cell")
	work = params.fetch("work")
	@contact = Contact.new(home, cell, work)
	@contact.save()
  @phone = Phone.find(params.fetch('phone_id').to_i())
  @phone.add_contact(@contact)
  erb(:phone)
end

get('/contacts/:id') do 
	@contact = Contact.find(params.fetch("id"))
	erb(:contact)
end

get('/phones/:id') do 
	@phone = Phone.find(params.fetch('id').to_i())
	erb(:phone)
end
