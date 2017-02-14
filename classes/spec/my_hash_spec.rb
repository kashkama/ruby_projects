require('rspec')
  require('my_hash')

  describe(MyHash)  do
    describe('#myFetch')  do
      it('retrieves a stored value by its keys')  do
        test_hash = MyHash.new()
        test_hash.myStore("kitten","cute")
        expect(test_hash.myFetch("kitten")).to(eq("cute"))
      end
    end
  end
