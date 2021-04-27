class Question 
  attr_reader :questions

  def initialize
    @first = nil
    @second = nil
  end

  def random_number
    rand(1..20)
  end

  def questions
    print "What does #{@first = self.random_number} plus #{@second = self.random_number} equal? \n"
    sum = @first + @second
  end

end