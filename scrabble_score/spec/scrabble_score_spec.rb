require('rspec')
  require('scrabble_score')

    describe('String#scrabble_score') do
      it("Returns number 1 when given a letter") do
        expect(("A").scrabble_score()).to(eq(1))
      end
      it("Returns number 2 when given a letter ") do
        expect(("G").scrabble_score()).to(eq(2))
      end
      it("Returns number 3 when given a letter ") do
        expect(("C").scrabble_score()).to(eq(3))
      end
      it("Returns number 4 when given a letter ") do
        expect(("H").scrabble_score()).to(eq(4))
      end
      it("Returns number 5 when given a letter ") do
        expect(("K").scrabble_score()).to(eq(5))
      end
      it("Returns number 4 when given a letter ") do
        expect(("V").scrabble_score()).to(eq(4))
      end
      it("Returns number 8 when given a letter ") do
        expect(("X").scrabble_score()).to(eq(8))
      end
      it("Returns number 12 when given a letter ") do
        expect(("HUGGIES").scrabble_score()).to(eq(12))
      end
      it("Returns number 7 when given a letter ") do
        expect(("HUGE").scrabble_score()).to(eq(8))
      end

    end
