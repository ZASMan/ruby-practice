class Person # after this, we could create a class that inherits from class, like class Java < Language
  def initialize(name, occupation) #this is the constructor method, so Language.new
    @name = name # @ means its attached to the instance of the class, so you put it in when you create
    @occupation = occupation
  end
	
  def greeting
    puts "I'm #{@name} and I am a #{@occupation}!"
  end
end

zane = Person.new("Zane", "Rails Developer")

zane.greeting

class RailsDev < Person
	def initialize(name, company)
		@name = name
		@company = company
	end

	def greeting
		puts "I'm #{@name} and I work as a Rails Dev at #{@company} !"
	end
end

jim = RailsDev.new("Jim", "Air BNB")

jim.greeting