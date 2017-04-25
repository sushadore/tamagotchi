require "tamagotchi"
require "rspec"
require "pry"


describe (Tamagotchi) do
  describe("#initialize") do
    it("creates new Tamagotchi adding name and life levels") do
      test_pet= Tamagotchi.new("Pixie", 10, 10, 10)
      expect(test_pet.name()).to(eq("Pixie"))
      expect(test_pet.food_level()).to(eq(10))
      expect(test_pet.sleep_level()).to(eq(10))
      expect(test_pet.activity_level()).to(eq(10))
    end
  end

  describe("#is_alive?") do
    it("is alive if the food level is above 0") do
      test_pet=Tamagotchi.new("Pixie", 10, 10, 10)
      expect(test_pet.is_alive?()).to(eq(true))
    end

    it("is dead if the food level is 0") do
      test_pet = Tamagotchi.new("Pixie", 10, 10, 10)
      expect test_pet.set_food_level() #make a method that will change food level
      expect(test_pet.is_alive?()).to(eq(false))
    end
  end

  describe("#time_passes") do
    it("decreases the amount of food the Tamagotchi has left by 1") do
      test_pet = Tamagotchi.new("Pixie", 10, 10, 10)
      test_pet.time_passes() #decide which trigger we want to use to make time pass
      expect(test_pet.food_level()).to(eq(9))
    end
  end


end
