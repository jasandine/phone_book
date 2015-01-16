require('rspec')
require('contact')

describe(Contact) do
  before() do
  Contact.clear()	
end

  describe("#home") do 
  	it("returns the home phone number")
  	test_contact = Contact.new(5413901111, 5413902222, 5413903333)
  	test_contact.save()
  	expect(test_contact.home()).to(eq(5413901111))
  end
end