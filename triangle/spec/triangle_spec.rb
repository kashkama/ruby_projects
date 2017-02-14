require('rspec')
  require('triangle')

  describe (Triangle) do
    it ('knows that equilateral triangles have equal sides') do
      test_triangle = Triangle.new(2,2,2)
      expect(test_triangle.triangle()).to(eq("equilateral"))
    end
    it ('knows that isosceles triangles have first and last sides equal') do
      test_triangle = Triangle.new(4,3,4)
      expect(test_triangle.triangle()).to(eq("isosceles"))
    end
    it ('knows that scalene triangles have no equal sides') do
      test_triangle = Triangle.new(3,4,5)
      expect(test_triangle.triangle()).to (eq("scalene"))
    end
  end
