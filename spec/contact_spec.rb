require('rspec')
require('contact')

describe(Contact) do
  before() do
  Contact.clear()	
end

  describe("#home") do 
  	it("returns the home phone number") do 
  	  test_contact = Contact.new(5413901111, 5413902222, 5413903333)
  	  test_contact.save()
  	  expect(test_contact.home()).to(eq(5413901111))
  end
end

  describe("#cell") do 
  	it("returns the cell phone number") do 
  		test_contact = Contact.new(5413901111, 5413902222, 5413903333)
  		test_contact.save()
  		expect(test_contact.cell()).to(eq(5413902222))
  	end
  end

  describe("#work") do 
	  it("returns the work phone number") do 
	  	test_contact = Contact.new(5413901111, 5413902222, 5413903333)
  		test_contact.save()
  		expect(test_contact.work()).to(eq(5413903333))
  	end
  end

  describe('#id') do 
  	it("returns the id of the contact") do 
  		test_contact = Contact.new(5413901111, 5413902222, 5413903333)
  		test_contact.save()
  		expect(test_contact.id()).to(eq(1))
  	end
  end

  describe("#save") do 
  	it ("adds a name to the array of saved numbers") do 
  		test_contact = Contact.new(5413901111, 5413902222, 5413903333)
  		test_contact.save()
  		expect(Contact.all()).to(eq([test_contact]))
  	end
  end

  describe(".all") do 
  	it("is empty at first") do 
  		expect(Contact.all()).to(eq([]))
  	end
  end

  describe(".clear") do
  	it("empties out all of the saved contacts") do 
  		Contact.new(5413901111, 5413902222, 5413903333).save()
  		Contact.clear()
  		expect(Contact.all()).to(eq([]))
  	end
  end

  describe(".find") do 
  	it("returns a contact by its id number") do 
  		test_contact = Contact.new(5413901111, 5413902222, 5413903333)
  		test_contact.save()
  		test_contact2 = Contact.new(5413901111, 5414445555, 5416667777)
  		test_contact2.save()
  		expect(Contact.find(test_contact.id())).to(eq(test_contact))
  	end
  end
end



