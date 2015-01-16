class Contact
  @@contacts = []

  define_method(:initialize) do |home, cell, work|
  	@home = home
  	@cell = cell
  	@work = work
  	@id = @@contacts.length().+(1)
  end

  define_method(:home) do 
  	@home
  end

  define_method(:cell) do
  	@cell
  end

  define_method(:work) do
  	@work
  end

  define_singleton_method(:all) do
  	@@contacts
  end

  define_method(:save) do
  	@@contacts.push(self)
  end

  define_singleton_method(:clear) do
  	@@contacts = []
  end



end