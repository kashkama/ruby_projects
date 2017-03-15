require('rspec')
  require('contact')

  describe(Contact) do
    before() do
      Contact.clear()
    end

    describe("#first_name") do
      it("returns the first name of person")  do
        test_contact  = Contact.new({:first_name=>  "owen",:last_name=> "kamau",:job_title=> "soft developer",:company=> "code gears",:address=> "kiambu,76900",:phone_number=> 072456743})
        expect(test_contact.first_name()).to(eq("owen"))
      end
    end
    describe("#company") do
      it("returns the first name of person")  do
        test_contact  = Contact.new({:first_name=>  "owen",:last_name=> "kamau",:job_title=> "soft developer",:company=> "code gears",:address=> "kiambu,76900",:phone_number=> 072456743})
        expect(test_contact.company()).to(eq("code gears"))
      end
    end

    describe(".all") do
      it("returns empty at first")  do
        expect(Contact.all()).to(eq([]))
      end
    end

    describe("#save") do
      it("adds a person attributes")  do
        test_contact  = Contact.new({:first_name=>  "owen",:last_name=> "kamau",:job_title=> "soft developer",:company=> "code gears",:address=> "kiambu,76900",:phone_number=> 072456743})
        test_contact.save()
        expect(Contact.all()).to(eq([test_contact]))
      end
    end

    describe(".clear") do
      it("empties out all saved people")  do
        Contact.new({:first_name=>  "owen",:last_name=> "kamau",:job_title=> "soft developer",:company=> "code gears",:address=> "kiambu,76900",:phone_number=> 072456743})
        Contact.clear()
        expect(Contact.all()).to(eq([]))
      end
    end

    describe("#id") do
      it("returns the id of a person")  do
        test_contact  = Contact.new({:first_name=>  "owen",:last_name=> "kamau",:job_title=> "soft developer",:company=> "code gears",:address=> "kiambu,76900",:phone_number=> 072456743})
        test_contact.save()
        expect(test_contact.id()).to(eq(1))
      end
    end

    describe(".find") do
      it("returns a person by its id number")  do
        test_contact  = Contact.new({:first_name=>  "owen",:last_name=> "kamau",:job_title=> "soft developer",:company=> "code gears",:address=> "kiambu,76900",:phone_number=> 072456743})
        test_contact.save()
        test_contact2  = Contact.new({:first_name=>  "jane",:last_name=> "njoki",:job_title=> "accountant",:company=> "faulu",:address=> "nairobi,77900",:phone_number=> +25467890323})
        test_contact2.save()
        expect(Contact.find(test_contact.id())).to(eq(test_contact))
      end
    end
  end
