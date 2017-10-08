#Orange tree
class OrangeTree

  def initialize
    @height = 0
    @age = 0
    @orange_count = 0
    @alive = true
  end

  def height
    if @alive == true
      @height.round(2)
    else
      puts"This tree is dead."
    end
  end

  def one_year_passes
    @alive = false if @age > 25
    if @alive == true
      @age+=1
      @height+=0.4
      @age < 5? @orange_count= 0: @orange_count= (@age * 1.5).ceil
      @age
    else
      @orange_count = 0
      puts "This tree still dead."
    end

  end

  def count_the_oranges
    if @alive == false
      puts "Dead tree have no oranges."
    else
      @orange_count
    end
  end

  def pick_an_orange
    if @alive == false
      puts "This tree is dead, plant another tree if you want an orange."
    else
      if @orange_count <= 0
        puts "There are no more oranges to pick this year"
      else
        @orange_count-=1
        puts "Yummy!"
      end
    end
  end
end
orange = OrangeTree.new
10.times{orange.one_year_passes}
puts orange.count_the_oranges
20.times{orange.pick_an_orange}
puts orange.count_the_oranges
