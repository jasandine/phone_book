class Contact
  @@contacts = []

  define_method(:initialize) do |home, cell, work|
  	@home = home
  	@cell = cell
  	@year = year
  end

  define_method(:home) do 
  	@home
  end