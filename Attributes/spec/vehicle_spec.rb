require('rspec')
  require('vehicle')

  describe("#make") do
    it("returns the make of the vehicle") do
      test_vehicle  = Vehicle.new({:make=> "Toyota", :model => "Prius", :year => "2000", :color => "blue", :engine_size => "4L", :number_of_doors => "4"})
      expect(test_vehicle.make()).to(eq("Toyota"))
    end
  end

  describe("#color") do
    it("returns the color of the vehicle") do
      test_vehicle  = Vehicle.new({:make=> "Toyota", :model => "Prius", :year => "2000", :color => "blue", :engine_size => "4L", :number_of_doors => 4})
      expect(test_vehicle.color()).to(eq("blue"))
    end
  end
