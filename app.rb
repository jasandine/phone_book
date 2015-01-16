require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/contact')

get ('/') do 
	@contacts = Contact.all()
	erb(:index)
end

post('contact') do 
	home = params.fetch("home") 
	cell = params.fetch("cell")
	work = params.fetch("work")
	contact = Contact.new(home, cell, year)
	contact.save()
	@contacts = Contact.all()
	erb(:index)
end

get('/contact/:id') do 
	@contact = Contact.find(params.fetch("id"))
	erb(:contact)
end