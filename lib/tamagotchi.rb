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
    @food
  end

  def sleep_level
    @sleep
  end

  def activity_level
    @activity
  end

  def is_alive?
    @food > 0
  end

  def set_food_level
    @food = 0
  end

  def time_passes
    @food -= 1
  end
end
