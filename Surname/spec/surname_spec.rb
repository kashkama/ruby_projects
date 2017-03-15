require('rspec')
  require('surname')

  describe(String) do
    describe('#name') do
      it("returns the capitalized input") do
        expect(("owen kamau").name()).to(eq("O. Kamau"))
      end
    end
  end
