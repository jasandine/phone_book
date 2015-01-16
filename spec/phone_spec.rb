require('rspec')
require('phone')
require('contact')

describe(Phone) do 
	before() do 
		Phone.clear()
	end

	describe('#name') do 
		it("returns the name of the contact") do 
			test_phone = Phone.new("Ghostface Killah")
			expect(test_phone.name()).to(eq("Ghostface Killah"))
		end
	end

	describe('#id') do 
		it("returns the id of the contact") do 
			test_phone = Phone.new("Ghostface Killah")
			expect(test_phone.id()).to(eq(1))
		end
	end

	describe('#add_contact') do 
		it("adds a new contact to a phone") do 
			test_phone = Phone.new("Ghostface Killah")
			test_contact = Contact.new(5413901111, 5413902222, 5413903333)
			test_phone.add_contact(test_contact)
			expect(test_phone.numbers()).to(eq([test_contact]))
		end
	end

	describe("save") do 
		it("adds a name to the array of saved names") do 
			test_phone = Phone.new("Ghostface Killah")
			test_phone.save()
			expect(Phone.all()).to(eq([test_phone]))
		end
	end

	describe(".all") do 
		it("is empty at first") do 
			expect(Phone.all()).to(eq([]))
		end
	end

	describe(".clear") do 
		it("empties out all of the saved contacts") do
			Phone.new("Ghostface Killah").save()
			Phone.clear()
			expect(Phone.all()).to(eq([]))
		end
	end

	describe(".find") do 
		it("returns a contact(phone) by its id number") do 
			test_phone = Phone.new("Ghostface Killah")
			test_phone.save()
			test_phone2 = Phone.new("Method Man")
			test_phone2.save()
			expect(Phone.find(test_phone.id())).to(eq(test_phone))
		end
	end



end



