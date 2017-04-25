class Tamagotchi
  define_method(:initialize) do |name, food, rest, activity|
    @name = name
    @food = food
    @sleep = rest
    @activity = activity
  end

  def name
    @name
  end

  def food_level
    @food = 10
  end

  def sleep_level
    @sleep = 10
  end

  def activity_level
    @activity = 10
  end

  def is_alive?
    @food > 0
  end

  def set_food_level
    @food = 0
    # elsif @food <10 && @food >0
    #   @food = @food - 1
  end
end
